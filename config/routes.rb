Rails.application.routes.draw do

  root to: 'home#index'

  match 'search', to: 'home#search', via: :post
end
