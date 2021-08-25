class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.integer :team_id
      t.integer :address_id
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
