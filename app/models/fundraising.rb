# == Schema Information
#
# Table name: fundraisings
#
#  id            :integer          not null, primary key
#  contribution  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  agent_id      :integer
#  event_id      :integer
#  individual_id :integer
#
class Fundraising < ApplicationRecord
end
