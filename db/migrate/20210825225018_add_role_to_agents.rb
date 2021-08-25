class AddRoleToAgents < ActiveRecord::Migration[6.0]
  def change
  add_column :agents, :role, :integer
  end
end
