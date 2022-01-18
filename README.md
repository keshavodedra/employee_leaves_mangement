# README


*UserStory*

As owner of a crew I want to be able to export my employees absences so that I can import them into outlook.

*Criteria*

I can get a list of absences including the names of the employee
I can generate an iCal file and import it into outlook (maybe use a gem or npm package)
I can see vacations of my employees as "#{member.name} is on vacation"
I can see sickness of my employees as "#{member.name} is sick"
(Bonus) I can go to http://localhost:3000 and download the iCal file
(Bonus) I can go to http://localhost:3000?userId=123 and only receive the absences of the given user
(Bonus) I can go to http://localhost:3000?startDate=2017-01-01&endDate=2017-02-01 and only receive the absences in the given date range


ENV:
  ruby '2.6.1'
  rails '6.1'
  database: postgresql

RUN:
  bundle install
  change in database.yml
  rake db:create
  rake db:migrate
  rake db:seed  //to create company, employees and vacations

ROUTES :

http://localhost:3000
http://localhost:3000?userId=1
http://localhost:3000?startDate=2021-12-05&endDate=2021-12-12
http://localhost:3000/ics_export.ics