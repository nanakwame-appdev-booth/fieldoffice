# == Schema Information
#
# Table name: event_donations
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  event_id       :integer
#  fundraising_id :integer
#
class EventDonation < ApplicationRecord
end
