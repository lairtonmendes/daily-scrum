class AddDailyIdToReply < ActiveRecord::Migration
  def change
    add_column :replies, :daily_id, :integer

  end
end
