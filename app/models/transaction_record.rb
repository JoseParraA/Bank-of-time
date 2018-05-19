class TransactionRecord < ApplicationRecord
  belongs_to :provider, class_name: 'User', :foreign_key => :provider_id
  belongs_to :reciver, class_name: 'User', :foreign_key => :reciver_id


  include Filterable

end
