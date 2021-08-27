class CreateUserPasswords < ActiveRecord::Migration[6.0]
  def change
    create_table :user_passwords do |t|
      t.integer :individual_id
      t.string :password_digest

      t.timestamps
    end
  end
end
