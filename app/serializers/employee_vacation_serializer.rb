class EmployeeVacationSerializer < ActiveModel::Serializer
	 attributes :employee, :date, :vacation_type

	 def employee
	 	{
	 		id: object.employee.id,
	 		name: object.employee.name
	 	}
	 end
end