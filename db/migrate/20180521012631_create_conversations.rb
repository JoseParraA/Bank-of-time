class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :helper_id
      t.text :comments
      t.timestamps
    end
  end
end
