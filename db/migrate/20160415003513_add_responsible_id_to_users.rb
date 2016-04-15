class AddResponsibleIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :responsible_id, :integer
  end
end
