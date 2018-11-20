class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.belongs_to :post, index: true
      t.string :user_id
      t.string :message

      t.timestamps
    end
  end
end
