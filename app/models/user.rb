class User < ApplicationRecord
  has_secure_password
  has_many :recivers, :class_name => 'TransactionRecord', :foreign_key => 'reciver_id'
  has_many :providers, :class_name => 'TransactionRecord', :foreign_key => 'provider_id'

  validates :email, :presence => true, :uniqueness => true

  geocoded_by :address   #using geocoder to convert location into coordinates
  after_validation :geocode   # auto-fetch coordinates

  mount_uploader :image, ImageUploader
end
