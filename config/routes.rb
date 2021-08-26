Rails.application.routes.draw do

  get("/", { :controller => "landing_page", :action => "index"})

  get("/homepage", { :controller => "app_home", :action => "index"})

  get("/people", { :controller => "people", :action => "index"})
  get("/people/candidate", { :controller => "people", :action => "candidate"})
  get("/people/select_role", { :controller => "people", :action => "select_role"})
  get("/people/volunteer", { :controller => "people", :action => "volunteers"})
  get("/people/fieldmanager", { :controller => "people", :action => "field_managers"})
  get("/people/petitioner", { :controller => "people", :action => "petitioners"})
  get("/people/donor", { :controller => "people", :action => "donors"})
  get("/people/add_people", { :controller => "people", :action => "add"})
  get("/people/add_individual", { :controller => "people", :action => "add_person"})
  get("/people/filter", { :controller => "people", :action => "filter"})
  get("/people/:individual_id", { :controller => "people", :action => "person_view"})

  get("/settings", { :controller => "settings", :action => "index"})
  get("/add_role/submit", { :controller => "settings", :action => "submit_role"})
  
  get("/events", { :controller => "events", :action => "index"})
end
