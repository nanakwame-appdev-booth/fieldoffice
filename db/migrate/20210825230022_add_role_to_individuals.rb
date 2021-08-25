class AddRoleToIndividuals < ActiveRecord::Migration[6.0]
  def change
    add_column :individuals, :role, :integer
  end
end
