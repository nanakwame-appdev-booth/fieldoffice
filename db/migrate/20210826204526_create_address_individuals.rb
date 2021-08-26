class CreateAddressIndividuals < ActiveRecord::Migration[6.0]
  def change
    create_table :address_individuals do |t|
      t.string :address_id
      t.string :individual_id

      t.timestamps
    end
  end
end
