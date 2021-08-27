class LoginController < ApplicationController 

  def sign_up
    @list_of_roles = Role.all


    render ({ :template => "login/sign_up.html.erb"})
  end

  def new_user
    #Parameters: {"fname"=>"Test", "lname"=>"Params", "role"=>"Candidate", "email"=>"j@test.com", "phone"=>"1233211231", "pword"=>"soccer", "pword_confirm"=>"soccer", "individual_id"=>"user_role"}

    fname = params.fetch("fname")
    lname = params.fetch("lname")
    role = params.fetch("role").gsub(/[^0-9]/, "")
    email = params.fetch("email")
    phone = params.fetch("phone")
    pword = params.fetch("pword")
    pword_confirm = params.fetch("pword_confirm")

    new_user = Individual.new
    new_user.first_name = fname
    new_user.last_name = lname
    new_user.role = role
    new_user.email = email
    new_user.phone_number = phone


    user_password = UserPassword.new
    user_password.individual_id = new_user.id
    user_password.password = pword
    user_password.password_confirmation = pword_confirm

    save_status = user_password.save

    if save_status == true
    new_user.save

      session.store(:user_id, new_user.id)
      
      redirect_to("/people/new_user/#{new_user.id}")
    else
      redirect_to("/sign_up", { :alert => user_password.errors.full_messages.to_sentence})
    end

  
  end

end
