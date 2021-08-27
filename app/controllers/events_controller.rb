class EventsController < ApplicationController

  def index

    render ({ :template => "events/index.html.erb"})
  end

  def add
    @list_of_teams = Team.all

    render ({ :template => "events/add.html.erb"})
  end

  def submit
    #Parameters: {"name"=>"J", "team"=>"Dogpatch", "desc"=>" asdf", "start"=>"2021-08-26T15:28", "end"=>"2021-08-26T16:28"}

    event_name = params.fetch("name")
    event_team = params.fetch("team")
    event_desc = params.fetch("desc")
    event_start = params.fetch("start").to_datetime
    event_end = params.fetch("end").to_datetime

    team_id = Team.where({ :team_name => event_team}).at(0)

    new_event = Event.new

    new_event.name = event_name
    new_event.team_id = team_id.id
    new_event.description = event_desc
    new_event.start_date = event_start
    new_event.end_date = event_end

    new_event.save

    #render ({ :template => "events/add.html.erb"})
    redirect_to("/events/" + new_event.id.to_s)
  end

  def event
    event_id = params.fetch("id")

    @list_of_events = Event.all
    @this_event = Event.where({ :id => event_id }).at(0)
    @attendance = EventAttendee.where({ :event_id => event_id})
    matching_donation_record = EventDonation.where({ :event_id => event_id}).at(0)
    @donations = Fundraising.where({ :id => matching_donation_record.fundraising_id})

    render ({ :template => "events/event.html.erb"})
  end

  def add_attendee
    #Parameters: {"fname"=>"John", "lname"=>"Jacobson", "email"=>"jonisjon@gmail.com", "id"=>"4"}

    fname = params.fetch("fname")
    lname = params.fetch("lname")
    email = params.fetch("email")
    event_id = params.fetch("id")

    individual = Individual.new
    individual.first_name = fname
    individual.last_name = lname
    individual.email = email
    individual.role_id = "10"
    individual.save

    attendance = EventAttendee.new
    attendance.individual_id = individual.id
    attendance.event_id = event_id 
    attendance.save

    redirect_to("/events/" + event_id)
  end

  def add_donation
    #Parameters: {"id"=>"4", "attendee"=>"176. test yup", "damount"=>"200"}

    donation = params.fetch("damount")
    attendee_name = params.fetch("attendee").gsub(/[^a-z]/i, "")
    attendee_id = params.fetch("attendee").gsub(/[^0-9]/, "")
    event_id = params.fetch("id")

    new_donation = Fundraising.new
    new_donation.event_id = event_id
    new_donation.individual_id = attendee_id
    new_donation.contribution = donation
    new_donation.save 

    donation_record = EventDonation.new
    donation_record.fundraising_id = new_donation.id
    donation_record.event_id = event_id
    donation_record.save

    redirect_to("/events/" + event_id)
  end

end
