# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create(:name => 'Jose P', :email => '100@abc.com', :password => 'chicken',:credit => 2, :suburb => 'Maroubra', :skill => 'Spanish lessons')
u2 = User.create(:name => 'Sam C', :email => '200@abc.com', :password => 'chicken',:credit => 2, :suburb => 'Glebe', :skill => 'IT')
u3 = User.create(:name => 'Morgan G ', :email => '300@abc.com', :password => 'chicken',:credit => 2, :suburb => 'Surry Hills', :skill => 'Plumber')
u4 = User.create(:name => 'Sally Jones', :email => '400@abc.com', :password => 'chicken',:credit => 2, :suburb => 'Randwick', :skill => 'Gardering')
u5 = User.create(:name => 'Megan Long', :email => '500@abc.com', :password => 'chicken',:credit => 2, :suburb => 'Bondi Juction', :skill => 'Guitar lessons')
u6 = User.create(:name => 'Tom Shaws', :email => '600@abc.com', :password => 'chicken',:credit => 2, :suburb => 'Kingsford', :skill => 'Cooking')


TransactionRecord.destroy_all
b1 = TransactionRecord.create(:credit => 2, :review => 5, :comments => 'Good')
b2 = TransactionRecord.create(:credit => 2, :review => 4, :comments => 'Good')
b3 = TransactionRecord.create(:credit => 2, :review => 3, :comments => 'Good')
b4 = TransactionRecord.create(:credit => 2, :review => 5, :comments => 'Good')
b5 = TransactionRecord.create(:credit => 2, :review => 4, :comments => 'Good')
b6 = TransactionRecord.create(:credit => 2, :review => 1, :comments => 'Good')
