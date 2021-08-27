# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  description :string
#  end_date    :datetime
#  name        :string
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  address_id  :integer
#  team_id     :integer
#
class Event < ApplicationRecord

  def team
    team_id = self.team_id

    matching_team = Team.where({ :id => team_id})

    team_name = matching_team.at(0)

    return team_name
  end

end
