class SettingsController < ApplicationController

  def index
    
    render ({ :template => "settings/index.html.erb"})
  end

  def submit_role
    role_name = params.fetch("newrole")
    
    new_role = Role.new

    new_role.title = role_name

    new_role.save

    redirect_to("/settings")
  end

end