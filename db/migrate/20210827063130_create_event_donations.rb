class CreateEventDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :event_donations do |t|
      t.integer :fundraising_id
      t.integer :event_id

      t.timestamps
    end
  end
end
