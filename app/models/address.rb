# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  address    :string
#  address2   :string
#  city       :string
#  state      :string
#  zip_code   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Address < ApplicationRecord
end
