class PeopleController < ApplicationController

  def index
    @list_of_agents = Agent.all.order({ :first_name => :asc})

    render ({ :template => "people/index.html.erb"}) 
  end

  def team
    @list_of_agents = Agent.all.order({ :first_name => :asc})

    render ({ :template => "people/index.html.erb"}) 
  end

  def volunteers
    @list_of_agents = Agent.all.order({ :first_name => :asc})

    render ({ :template => "people/index.html.erb"}) 
  end

  def recruits
    @list_of_agents = Agent.all.order({ :first_name => :asc})

    render ({ :template => "people/index.html.erb"}) 
  end

  def add

    render ({ :template => "people/add.html.erb"}) 
  end

end