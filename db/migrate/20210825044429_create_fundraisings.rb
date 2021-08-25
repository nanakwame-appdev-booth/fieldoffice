class CreateFundraisings < ActiveRecord::Migration[6.0]
  def change
    create_table :fundraisings do |t|
      t.integer :agent_id
      t.integer :event_id
      t.integer :individual_id
      t.integer :contribution

      t.timestamps
    end
  end
end
