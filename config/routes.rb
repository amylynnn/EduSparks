Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show'
  devise_for :users
  root to: "subjects#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :subjects, only: %i[index show] do
    resources :topics, only: %i[index show]
  end
end
