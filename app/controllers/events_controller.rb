class EventsController < ApplicationController

  def index

    render ({ :template => "events/index.html.erb"})
  end

  def add
    @list_of_teams = Team.all

    render ({ :template => "events/add.html.erb"})
  end

end
