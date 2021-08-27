class PeopleController < ApplicationController

  def index
    @list_of_people = Individual.all.order({ :first_name => :asc})
    @list_of_roles = Role.all

    render ({ :template => "people/index.html.erb"}) 
  end

  def select_role
    role_select = params.fetch("role").delete(' ').downcase

    redirect_to("/people/" + role_select) 
  end

  def candidate
    @list_of_roles = Role.all
    @list_of_people = Individual.where({:role => "5"}).order({ :first_name => :asc})
    
    render ({ :template => "people/candidate.html.erb"}) 
  end

  def volunteers
    @list_of_roles = Role.all
    @list_of_people = Individual.where({:role => "6"}).order({ :first_name => :asc})
    
    render ({ :template => "people/volunteer.html.erb"}) 
  end

  def field_managers
    @list_of_roles = Role.all
    @list_of_people = Individual.where({:role => "7"}).order({ :first_name => :asc})
    
    render ({ :template => "people/field_managers.html.erb"}) 
  end

  def petitioners
    @list_of_roles = Role.all
    @list_of_people = Individual.where({:role => "8"}).order({ :first_name => :asc})
    
    render ({ :template => "people/petitioners.html.erb"}) 
  end

  def donors
    @list_of_roles = Role.all
    @list_of_people = Individual.where({:role => "9"}).order({ :first_name => :asc})
    
    render ({ :template => "people/donors.html.erb"}) 
  end

  def attendee
    @list_of_roles = Role.all
    @list_of_people = Individual.where({:role => "10"}).order({ :first_name => :asc})
    
    render ({ :template => "people/attendee.html.erb"}) 
  end

  def filter
    filter_choice = params.fetch("role")

    redirect_to("/people/" + filter_choice)
  end


  def add
    @list_of_roles = Role.all

    render ({ :template => "people/add.html.erb"}) 
  end

  def edit_person
    #Parameters: {"fname"=>"Adam", "lname"=>"Small", "role"=>"Volunteer", "email"=>"biglou@mac.com", "phone"=>"734-676-6079"}
    phone_number = params.fetch("phone")
    fname = params.fetch("fname")
    lname = params.fetch("lname")
    role = params.fetch("role")
    email = params.fetch("email")

    role_search = Role.where({ :title => role}).at(0)
    role_id = role_search.id

    new_update = Individual.where({ :phone_number => phone_number}).at(0)
    new_update.first_name = fname
    new_update.last_name = lname
    new_update.role = role_search.id
    new_update.email = email
    new_update.phone_number = phone_number
    new_update.save


    redirect_to("/people/" + new_update.id.to_s)
  end

  def person_view
    person_id = params.fetch("individual_id")

    @list_of_roles = Role.all
    @list_of_addresses = AddressIndividual.all
    @single_address = @list_of_addresses.at(0)

    @person_record = Individual.where({ :id => person_id })
    @the_person = Individual.where({ :id => person_id }).at(0)

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