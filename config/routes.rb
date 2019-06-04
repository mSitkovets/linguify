Rails.application.routes.draw do
  resources :friendships
  resources :comments
  resources :questions
  resources :attempts
  resources :quizzes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
