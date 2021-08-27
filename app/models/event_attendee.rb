# == Schema Information
#
# Table name: event_attendees
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  event_id      :string
#  individual_id :string
#
class EventAttendee < ApplicationRecord

  def individual
    individual_id = self.individual_id
    matching_individual = Individual.where({ :id => individual_id})
    the_individual = matching_individual.at(0)

    return the_individual
  end

end
