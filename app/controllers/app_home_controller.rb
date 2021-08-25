class AppHomeController < ApplicationController

  def index

    render ({ :template => "apphome/index.html.erb"})
  end

end