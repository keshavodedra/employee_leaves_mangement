class CalenderService
  attr_reader :events

  def initialize(params)
    @events = params
  end

  def calender_events
    return unless events

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
