class LoginController < ApplicationController 

  def sign_up
    @list_of_roles = Role.all


    render ({ :template => "login/sign_up.html.erb"})
  end

  def new_user

    render ({ :template => "login/sign_up.html.erb"})
  end

end
