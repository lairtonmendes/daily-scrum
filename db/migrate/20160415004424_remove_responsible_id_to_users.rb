class RemoveResponsibleIdToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :responsible_id, :integer
  end
end
