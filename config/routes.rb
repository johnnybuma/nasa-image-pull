Rails.application.routes.draw do

  get 'things' => 'things#new'
  post 'things' => 'things#show'
  get 'test' => 'things#pull_data'
  root to: 'things#new'
end
