class EmployeesController < ApplicationController
  before_action :set_employee, only: [:index]

  def index
    if params[:userId].present?
      render json: @employee, serializer: EmployeeSerializer
    elsif params[:startDate].present? && params[:endDate].present?
      render json: current_company.employees_vacations(params), each_serializer: EmployeeVacationSerializer
    else
      render json: current_company.employees, each_serializer: EmployeeSerializer
    end
  end

  def ics_export
    @events = current_company.get_vacations
    cal = Employee.generate_ical(@events)
    respond_to do |format|
      format.html
      format.ics { send_data(cal, :filename=>"cal.ics", :disposition=>"inline; filename=cal.ics", :type=>"text/calendar")}
     end
  end


  private 
  
  def set_employee
    if(params[:userId].present?)
      @employee = Employee.find_by_id(params[:userId])
      render json: {message: 'User not found'}, status: :not_found if @employee.nil?
    end
  end

end