# README

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