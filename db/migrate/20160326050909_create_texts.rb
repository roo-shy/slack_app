class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :user_id
      t.integer :chatroom_id
      t.string :content
      t.datetime :posted_at

      t.timestamps null: false
    end
  end
end
