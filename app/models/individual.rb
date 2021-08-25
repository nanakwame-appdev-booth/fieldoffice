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
end
