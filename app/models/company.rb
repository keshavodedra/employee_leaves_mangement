class Company < ApplicationRecord

  has_many :employees, dependent: :destroy
  has_many :vacations, through: :employees

  def employees_vacations params
    vacations.where("date >= ? AND date <= ?", params[:startDate], params[:endDate])
  end

  def get_vacations
    events = []
    data = {}
    employees.includes(:vacations).each do |employee|
      vacations = employee.vacations
      if vacations.present?
        vacations.each do |vacation|
          data = { name: "#{employee.name} - #{vacation.vacation_type}", date: vacation.date.to_s }
          events.push(data)
        end
      end
    end
    events
  end
end
