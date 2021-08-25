class PeopleController < ApplicationController

  def index
    @list_of_agents = Agent.all.order({ :first_name => :asc})

    render ({ :template => "people/index.html.erb"}) 
  end

end