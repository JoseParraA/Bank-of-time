class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.integer :credit
      t.string :password_digest
      t.string :address
      t.text :skill
      t.string :image
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
