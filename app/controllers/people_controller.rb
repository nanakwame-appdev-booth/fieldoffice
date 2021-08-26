class PeopleController < ApplicationController

  def index
    @list_of_people = Individual.all.order({ :first_name => :asc})

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

    first_name = params.fetch("fname")
    last_name = params.fetch("lname")
    role = params.fetch("role")
    email = params.fetch("email")
    phone = params.fetch("phone")
    address1 = params.fetch("address1")
    address2 = params.fetch("address2")
    city = params.fetch("city")
    state = params.fetch("state")
    zip = params.fetch("zip")

    role_search = Role.where({ :title => role}).at(0)
    role_id = role_search.id

    new_address = Address.new 

    new_address.address = address1
    new_address.address2 = address2
    new_address.city = city
    new_address.state = state
    new_address.zip_code = zip

    new_address.save
    
    address_id = new_address.id
    
    new_individual = Individual.new 

    new_individual.first_name = first_name
    new_individual.last_name = last_name
    new_individual.role = role_id
    new_individual.phone_number = phone
    new_individual.email = email
    new_individual.address_id = address_id

    new_individual.save


    #render ({ :template => "people/add_individual.html.erb"})
    redirect_to("/people/" + new_individual.id.to_s)
  end

end