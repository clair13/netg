Rails.application.routes.draw do
  get 'citations/index'

  root 'citations#index'
  resources :citations
end
