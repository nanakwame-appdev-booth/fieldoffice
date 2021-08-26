# == Schema Information
#
# Table name: individuals
#
#  id           :integer          not null, primary key
#  email        :string
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  role         :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  address_id   :integer
#
class Individual < ApplicationRecord

  def position
    my_role_id = self.role

    matching_roles = Role.where({ :id => my_role_id})

    the_role = matching_roles.at(0)

    return the_role
  end

  def location
    my_address_id = self.role

    matching_addresses = Address.where({ :id => my_role_id})

    the_role = matching_roles.at(0)

    return the_role
    
  end
end
