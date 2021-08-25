class PeopleController < ApplicationController

  def index
    @list_of_agents = Agent.all

    render ({ :template => "people/index.html.erb"}) 
  end

end