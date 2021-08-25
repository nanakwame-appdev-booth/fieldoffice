class CreateEventOrganizers < ActiveRecord::Migration[6.0]
  def change
    create_table :event_organizers do |t|
      t.integer :event_id
      t.integer :agent_id

      t.timestamps
    end
  end
end
