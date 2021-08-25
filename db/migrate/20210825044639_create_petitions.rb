class CreatePetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :petitions do |t|
      t.integer :agent_id
      t.integer :event_id
      t.integer :individual_id

      t.timestamps
    end
  end
end
