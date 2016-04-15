class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :tipo
      t.date :data

      t.timestamps null: false
    end
  end
end
