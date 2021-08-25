Rails.application.routes.draw do

  get("/", { :controller => "landing_page", :action => "index"})

end
