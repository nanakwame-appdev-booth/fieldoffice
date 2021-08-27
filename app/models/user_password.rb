# == Schema Information
#
# Table name: user_passwords
#
#  id              :integer          not null, primary key
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  individual_id   :integer
#
class UserPassword < ApplicationRecord

has_secure_password

end
