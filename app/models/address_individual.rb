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

  def addy_indy
    individual_id = self.individual_id 
    address_id = self.address_id 

    individual_matching = Individual.where({ :id => individual_id}).where({ :address_id => address_id})

    addy_indy_record = individual_matching.at(0)

    return addy_indy_record
  end


end
