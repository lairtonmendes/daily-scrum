class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :r_um
      t.text :r_dois

      t.timestamps null: false
    end
  end
end
