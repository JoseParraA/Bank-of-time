json.extract! transaction_record, :id, :provider_id, :reciver_id, :credit, :review, :comments, :created_at, :updated_at
json.url transaction_record_url(transaction_record, format: :json)
