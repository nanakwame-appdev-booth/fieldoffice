class AddPasswordToIndividuals < ActiveRecord::Migration[6.0]
  def change
    add_column :individuals, :password_digest, :string
  end
end
