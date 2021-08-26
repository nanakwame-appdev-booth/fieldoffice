# == Schema Information
#
# Table name: address_individuals
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  address_id    :string
#  individual_id :string
#
class AddressIndividual < ApplicationRecord
end
