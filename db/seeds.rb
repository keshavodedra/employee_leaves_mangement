# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



company = Company.find_or_initialize_by(name: 'Company1')
company.save

employee = company.employees.find_or_initialize_by(name: "employee1")
employee.save

vacation = employee.vacations.find_or_initialize_by(date: Date.today, vacation_type: 1)
vacation.save

vacation = employee.vacations.find_or_initialize_by(date: Date.today - 3.days, vacation_type: 0)
vacation.save