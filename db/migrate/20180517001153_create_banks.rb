class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.integer :user_id
      t.integer :credit

      t.timestamps
    end
  end
end
