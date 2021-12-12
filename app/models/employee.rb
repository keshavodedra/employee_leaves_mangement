class Employee < ApplicationRecord

  belongs_to :company
  has_many :vacations, dependent: :destroy

  def self.generate_ical events
  	cal = Icalendar::Calendar.new
  	events.each do |myevent|
      event = Icalendar::Event.new
      event.dtstart = Date.parse(myevent[:date])
      event.summary = myevent[:name]
      cal.add_event(event)
    end
    cal.to_ical
  end

end
