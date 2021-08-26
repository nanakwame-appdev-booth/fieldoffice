Rails.application.routes.draw do

  get("/", { :controller => "landing_page", :action => "index"})

  get("/homepage", { :controller => "app_home", :action => "index"})

  get("/people", { :controller => "people", :action => "index"})
  get("/people/team", { :controller => "people", :action => "team"})
  get("/people/volunteers", { :controller => "people", :action => "volunteers"})
  get("/people/recruited", { :controller => "people", :action => "recruits"})
  get("/people/add_people", { :controller => "people", :action => "add"})
  get("/people/add_individual", { :controller => "people", :action => "add_person"})
  get("/people/:individual_id", { :controller => "people", :action => "person_view"})

  get("/settings", { :controller => "settings", :action => "index"})
  get("/add_role/submit", { :controller => "settings", :action => "submit_role"})
end
