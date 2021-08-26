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
    event_start = params.fetch("start")
    event_end = params.fetch("end")

    new_event = Event.new

    new_event.name = event_name
    new_event.desc = event_desc

    render ({ :template => "events/add.html.erb"})
  end

end
