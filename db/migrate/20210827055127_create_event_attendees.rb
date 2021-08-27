class CreateEventAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attendees do |t|
      t.string :individual_id
      t.string :event_id

      t.timestamps
    end
  end
end
