# == Schema Information
#
# Table name: agents
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
#  team_id      :integer
#
class Agent < ApplicationRecord
end
