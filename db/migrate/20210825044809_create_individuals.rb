class CreateIndividuals < ActiveRecord::Migration[6.0]
  def change
    create_table :individuals do |t|
      t.string :first_name
      t.string :last_name
      t.integer :address_id
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
