class SettingsController < ApplicationController

  def index
    
    render ({ :template => "settings/index.html.erb"})
  end

end