# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create(:name => 'Jose P', :email => '100@abc.com', :password => 'chicken',:credit => 2, :address => 'Broome street 2035 Maroubra', :skill => 'Spanish lessons')
u2 = User.create(:name => 'John C', :email => '200@abc.com', :password => 'chicken',:credit => 2, :address => '212 Bridge Rd, Glebe NSW 2037', :skill => 'IT')
u3 = User.create(:name => 'Morgan G ', :email => '300@abc.com', :password => 'chicken',:credit => 2, :address => '56-58 York Street, Level M, Sydney NSW 2000', :skill => 'Plumber')
u4 = User.create(:name => 'Sally Jones', :email => '400@abc.com', :password => 'chicken',:credit => 2, :address => '56/58 Beach Road, Bondi Beach NSW 2026', :skill => 'Gardering')
u5 = User.create(:name => 'Megan Long', :email => '500@abc.com', :password => 'chicken',:credit => 2, :address => '11 Patterson Street, Double Bay NSW 2028', :skill => 'Guitar lessons')
u6 = User.create(:name => 'Tom Shaws', :email => '700@abc.com', :password => 'chicken',:credit => 2, :address => 'Glebe Point Road, Glebe NSW 2037', :skill => 'Cooking')
u7 = User.create(:name => 'Adam Smith', :email => '800@abc.com', :password => 'chicken',:credit => 2, :address => 'Addison Rd, Marrickville NSW 2031', :skill => 'Surf lessons')
u8 = User.create(:name => 'Priscilla ', :email => '900@abc.com', :password => 'chicken',:credit => 2, :address => 'Coogee Bay Rd, Coogee NSW 2031', :skill => 'Guitar lessons')
u9 = User.create(:name => 'Tom Barret', :email => '1100@abc.com', :password => 'chicken',:credit => 2, :address => 'Coogee Bay Rd, Coogee NSW 2031', :skill => 'Pet Sitter')



TransactionRecord.destroy_all
b1 = TransactionRecord.create(:credit => 2, :review => 5, :comments => 'Very good job :)', :provider => u1, :reciver => u2)
b2 = TransactionRecord.create(:credit => 1, :review => 4, :comments => 'Good job', :provider => u2, :reciver => u2)
b3 = TransactionRecord.create(:credit => 1, :review => 3, :comments => 'Nice!!', :provider => u3, :reciver => u1)
b4 = TransactionRecord.create(:credit => 2, :review => 3, :comments => 'Aprendi mucho!!', :provider => u1, :reciver => u6)
b5 = TransactionRecord.create(:credit => 4, :review => 4, :comments => 'My garden looks great now', :provider => u4, :reciver => u2)
b6 = TransactionRecord.create(:credit => 3, :review => 3, :comments => 'Thanks for fixing my computer', :provider => u2, :reciver => u5)
b7 = TransactionRecord.create(:credit => 4, :review => 5, :comments => 'Delicious!', :provider => u6, :reciver => u2)
b8 = TransactionRecord.create(:credit => 2, :review => 5, :comments => 'Love it', :provider => u4, :reciver => u3)
b9 = TransactionRecord.create(:credit => 1, :review => 3, :comments => 'Thanks, now I know how to do a paella', :provider => u6, :reciver => u4)
b10 = TransactionRecord.create(:credit => 5, :review => 2, :comments => 'Heroku is on! Thanks!', :provider => u7, :reciver => u5)
b11 = TransactionRecord.create(:credit => 1, :review => 1, :comments => 'Very good job', :provider => u9, :reciver => u6)
b12 = TransactionRecord.create(:credit => 4, :review => 5, :comments => 'Thank you very much', :provider => u8, :reciver => u5)


Conversation.destroy_all
c1 = Conversation.create(:sender => u1, :helper => u6, :comments => 'Hello Tom, could you please teach me how to make a good meal for Saturday nigth?')
c2 = Conversation.create(:sender => u2, :helper => u5, :comments => 'Hello, I need a hand are you available')
c3 = Conversation.create(:sender => u5, :helper => u1, :comments => 'Hola! Do you have any hours available?')
c4 = Conversation.create(:sender => u6, :helper => u1, :comments => 'I need to fix my computer, are you available this week?')
c5 = Conversation.create(:sender => u1, :helper => u5, :comments => 'Hello Tom, could you please teach me how to make a good meal for Saturday nigth?')
c6 = Conversation.create(:sender => u1, :helper => u6, :comments => 'Hello Tom, could you please teach me how to cook?')
c7 = Conversation.create(:sender => u4, :helper => u9, :comments => 'Hello, could you please take care of my dog for Friday')
c8 = Conversation.create(:sender => u3, :helper => u8, :comments => 'I want to play guitar, do you have any free time?')
c9 = Conversation.create(:sender => u5, :helper => u7, :comments => 'Hi, do you have any time on Saturday?')
c10 = Conversation.create(:sender => u4, :helper => u8, :comments => 'Hello, do you have any free time?')
c11 = Conversation.create(:sender => u3, :helper => u5, :comments => 'Hello, :)  !!!')
c12 = Conversation.create(:sender => u2, :helper => u4, :comments => 'Hello, I need a hand on my garden, are you available today?')
