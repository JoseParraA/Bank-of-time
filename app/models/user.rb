class User < ApplicationRecord
  has_secure_password
  has_many :recivers, :class_name => 'TransactionRecord', :foreign_key => 'reciver_id', as: "reciver_transactions"
  has_many :providers, :class_name => 'TransactionRecord', :foreign_key => 'provider_id', as: "provider_transactions"
  has_many :senders, :class_name => 'Conversation', :foreign_key => 'sender_id'
  has_many :helpers, :class_name => 'Conversation', :foreign_key => 'helper_id'

  validates :email, :presence => true, :uniqueness => true

  geocoded_by :address   #using geocoder to convert location into coordinates
  after_validation :geocode   # auto-fetch coordinates

  mount_uploader :image, ImageUploader, :presence => false, :optional => true

  include Filterable
end
