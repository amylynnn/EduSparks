Rails.application.routes.draw do
  get 'quizzes/show'
  get 'topics/index'
  get 'topics/show'
  devise_for :users
  root to: "subjects#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :subjects, only: %i[index show] do
    resources :topics, only: %i[index]
  end

  resources :topics, only: %i[show] do
    resources :quizzes, only: %i[index]
  end

  resources :quizzes, only: %i[show]
end
