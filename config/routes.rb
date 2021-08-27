Rails.application.routes.draw do

  get("/", { :controller => "landing_page", :action => "index"})

  get("/sign_up", { :controller => "login", :action => "sign_up"})
  get("/sign_up/new_user", { :controller => "login", :action => "new_user"})

  get("/homepage", { :controller => "app_home", :action => "index"})

  get("/people", { :controller => "people", :action => "index"})
  get("/people/new_user/:individual_id", { :controller => "people", :action => "new"})
  get("/people/candidate", { :controller => "people", :action => "candidate"})
  get("/people/select_role", { :controller => "people", :action => "select_role"})
  get("/people/selectrole", { :controller => "people", :action => "index"})
  get("/people/volunteer", { :controller => "people", :action => "volunteers"})
  get("/people/fieldmanager", { :controller => "people", :action => "field_managers"})
  get("/people/petitioner", { :controller => "people", :action => "petitioners"})
  get("/people/donor", { :controller => "people", :action => "donors"})
  get("/people/eventattendee", { :controller => "people", :action => "attendee"})
  get("/people/add_people", { :controller => "people", :action => "add"})
  get("/people/add_individual", { :controller => "people", :action => "add_person"})
  get("/people/edit_individual", { :controller => "people", :action => "edit_person"})
  get("/people/delete", { :controller => "people", :action => "delete"})
  get("/people/filter", { :controller => "people", :action => "filter"})
  get("/people/:individual_id", { :controller => "people", :action => "person_view"})

  get("/settings", { :controller => "settings", :action => "index"})
  get("/add_role/submit", { :controller => "settings", :action => "submit_role"})
  
  get("/events", { :controller => "events", :action => "index"})
  get("/event/add_event", { :controller => "events", :action => "add"})
  get("/event/add_event/submit", { :controller => "events", :action => "submit"})
  get("/event/add_attendee", { :controller => "events", :action => "add_attendee"})
  get("/event/add_donation", { :controller => "events", :action => "add_donation"})
  get("/events/:id", { :controller => "events", :action => "event"})
end
