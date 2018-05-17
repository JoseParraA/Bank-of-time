class CreateTransactionRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :transaction_records do |t|
      t.integer :user_id
      t.integer :user_id
      t.integer :credit
      t.integer :review
      t.text :comments

      t.timestamps
    end
  end
end
