Rails.application.routes.draw do
  devise_for :users
  root to: "subjects#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :subjects, only: %i[index show]

  resources :quizzes, only: %i[show] do
    resources :questions, only: %i[show]
  end

  post 'quizzes/:id/submit', to: 'quizzes#submit', as: :submit_quiz
  get 'results', to: 'quizzes#results', as: :results

  resources :pages, only: %i[about]

end
