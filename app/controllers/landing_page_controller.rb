class LandingPageController < ApplicationController

    def index
      
      render ({ :template => "landing/index.html.erb"})
    end

end
