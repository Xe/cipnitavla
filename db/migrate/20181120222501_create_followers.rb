class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.string :follower_id
      t.string :to_follow_id
      t.timestamps
    end
  end
end
