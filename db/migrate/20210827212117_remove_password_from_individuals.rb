class RemovePasswordFromIndividuals < ActiveRecord::Migration[6.0]
  def change
    remove_column :individuals, :password_digest
  end
end
