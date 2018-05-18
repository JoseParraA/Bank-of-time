class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :transaction_records

  validates :email, :presence => true, :uniqueness => true

end
