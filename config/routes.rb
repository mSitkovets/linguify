Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create 
    delete 'logout' => :destroy
  end
  resources :lists
  resources :line_items
  root 'explore#index', as: 'explore_index'
  resources :friendships
  resources :comments
  resources :questions
  resources :attempts
  resources :quizzes do
    get :who_created, on: :member
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
