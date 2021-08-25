class PeopleController < ApplicationController

  def index

   render ({ :template => "people/index.html.erb"}) 
  end

end