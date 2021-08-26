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
    #Parameters: {"fname"=>"Jason", "lname"=>"Antwi", "role"=>"Candidate", "email"=>"Jason.Antwi@gmail.com", "phone"=>"7754011975", "address1"=>"1234 Main Street", "address2"=>"386", "city"=>"Oakland", "state"=>"California", "zip"=>"94607", "individual_id"=>"add_person"}

    first_name = param.fetch("fname")
    last_name = param.fetch("lname")
    role = param.fetch("role")
    email = param.fetch("email")
    phone = param.fetch("phone")
    address1 = param.fetch("address1")
    address2 = param.fetch("address2")
    city = param.fetch("city")
    state = param.fetch("state")
    zip = param.fetch("zip")

    new_individual = Individual.new 

    new_individual.first_name = first_name
    new_individual.last_name = last_name
    new_individual.phone_number = phone
    new_individual.email = email

    new_individual.save

        


    render ({ :template => "people/add_individual.html.erb"})
  end

end