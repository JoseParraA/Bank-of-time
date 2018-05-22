# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create(:name => 'Jose P', :email => '100@abc.com', :password => 'chicken',:credit => 2, :address => '4 Broome street 2035 Maroubra', :skill => 'Spanish lessons')
u2 = User.create(:name => 'Sam C', :email => '200@abc.com', :password => 'chicken',:credit => 2, :address => '212 Bridge Rd, Glebe NSW 2037', :skill => 'IT')
u3 = User.create(:name => 'Morgan G ', :email => '300@abc.com', :password => 'chicken',:credit => 2, :address => '56-58 York Street, Level M, Sydney NSW 2000', :skill => 'Plumber')
u4 = User.create(:name => 'Sally Jones', :email => '400@abc.com', :password => 'chicken',:credit => 2, :address => '56/58 Beach Road, Bondi Beach NSW 2026', :skill => 'Gardering')
u5 = User.create(:name => 'Megan Long', :email => '500@abc.com', :password => 'chicken',:credit => 2, :address => '11 Patterson Street, Double Bay NSW 2028', :skill => 'Guitar lessons')
u6 = User.create(:name => 'Tom Shaws', :email => '600@abc.com', :password => 'chicken',:credit => 2, :address => '67 Frenchmans Rd, Randwick NSW 2031', :skill => 'Cooking')


TransactionRecord.destroy_all
b1 = TransactionRecord.create(:credit => 2, :review => 5, :comments => 'Good', :provider => u1, :reciver => u2)
b2 = TransactionRecord.create(:credit => 2, :review => 4, :comments => 'Good', :provider => u2, :reciver => u2)
b3 = TransactionRecord.create(:credit => 2, :review => 3, :comments => 'Good', :provider => u3, :reciver => u1)
b4 = TransactionRecord.create(:credit => 2, :review => 5, :comments => 'Good', :provider => u1, :reciver => u6)
b5 = TransactionRecord.create(:credit => 2, :review => 4, :comments => 'Good', :provider => u4, :reciver => u2)
b6 = TransactionRecord.create(:credit => 2, :review => 1, :comments => 'Good', :provider => u2, :reciver => u5)


Conversation.destroy_all
c1 = Conversation.create(:sender => u1, :helper => u6, :comments => 'Hello')
c2 = Conversation.create(:sender => u1, :helper => u5, :comments => 'Good')
c3 = Conversation.create(:sender => u5, :helper => u1, :comments => 'Hello')
c4 = Conversation.create(:sender => u6, :helper => u1, :comments => 'By')
c5 = Conversation.create(:sender => u1, :helper => u5, :comments => 'By')
c6 = Conversation.create(:sender => u1, :helper => u6, :comments => 'Hello')
