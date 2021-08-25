# == Schema Information
#
# Table name: event_organizers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  agent_id   :integer
#  event_id   :integer
#
class EventOrganizer < ApplicationRecord
end
