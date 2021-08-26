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
    @list_of_roles = Role.all

    render ({ :template => "people/add.html.erb"}) 
  end

  def person_view
    

    render ({ :template => "people/person.html.erb"})
  end

  def add_person
        

    render ({ :template => "people/add_individual.html.erb"})
  end

end