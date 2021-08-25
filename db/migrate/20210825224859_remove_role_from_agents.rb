class RemoveRoleFromAgents < ActiveRecord::Migration[6.0]
  def change
  remove_column :agents, :role
  end 
end
