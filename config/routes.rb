# == Route Map
#
#                  Prefix Verb   URI Pattern                             Controller#Action
#     transaction_records GET    /transaction_records(.:format)          transaction_records#index
#                         POST   /transaction_records(.:format)          transaction_records#create
#  new_transaction_record GET    /transaction_records/new(.:format)      transaction_records#new
# edit_transaction_record GET    /transaction_records/:id/edit(.:format) transaction_records#edit
#      transaction_record GET    /transaction_records/:id(.:format)      transaction_records#show
#                         PATCH  /transaction_records/:id(.:format)      transaction_records#update
#                         PUT    /transaction_records/:id(.:format)      transaction_records#update
#                         DELETE /transaction_records/:id(.:format)      transaction_records#destroy
#                   banks GET    /banks(.:format)                        banks#index
#                         POST   /banks(.:format)                        banks#create
#                new_bank GET    /banks/new(.:format)                    banks#new
#               edit_bank GET    /banks/:id/edit(.:format)               banks#edit
#                    bank GET    /banks/:id(.:format)                    banks#show
#                         PATCH  /banks/:id(.:format)                    banks#update
#                         PUT    /banks/:id(.:format)                    banks#update
#                         DELETE /banks/:id(.:format)                    banks#destroy
#                   users GET    /users(.:format)                        users#index
#                         POST   /users(.:format)                        users#create
#                new_user GET    /users/new(.:format)                    users#new
#               edit_user GET    /users/:id/edit(.:format)               users#edit
#                    user GET    /users/:id(.:format)                    users#show
#                         PATCH  /users/:id(.:format)                    users#update
#                         PUT    /users/:id(.:format)                    users#update
#                         DELETE /users/:id(.:format)                    users#destroy

Rails.application.routes.draw do
  resources :conversations
  root :to => 'pages#home' # same as localhost 3000

  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :transaction_records
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
