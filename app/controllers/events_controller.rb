class EventsController < ApplicationController

  def index

    render ({ :template => "events/index.html.erb"})
  end

end
