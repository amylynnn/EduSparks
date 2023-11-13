Rails.application.routes.draw do
  devise_for :users
  root to: "subjects#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :subjects, only: %i[index show]

  resources :quizzes, only: %i[show] do
    resources :questions, only: %i[show]
  end

  resources :results, only: %i[show]

  resources :questions, except: %i[index show create new destroy update edit] do
    resources :user_answers, only: %i[create update]
  end

  get 'about', to: 'pages#about'
end
