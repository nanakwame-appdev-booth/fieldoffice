# == Schema Information
#
# Table name: petitions
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  agent_id      :integer
#  event_id      :integer
#  individual_id :integer
#
class Petition < ApplicationRecord
end
