Rails.application.routes.draw do

  get("/", { :controller => "landing_page", :action => "index"})

  get("/homepage", { :controller => "app_home", :action => "index"})

  get("/people", { :controller => "people", :action => "index"})
  get("/people/team", { :controller => "people", :action => "team"})
  get("/people/volunteers", { :controller => "people", :action => "volunteers"})
  get("/people/recruited", { :controller => "people", :action => "recruits"})
  get("/people/add_people", { :controller => "people", :action => "add"})
end
