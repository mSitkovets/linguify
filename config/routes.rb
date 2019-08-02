Rails.application.routes.draw do
  resources :answers
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create 
    delete 'logout' => :destroy
  end

  
  resources :questions
  resources :users
  resources :friendships
  resources :comments
  resources :quizzes do
    resources :attempts
  end
  resources :quizzes do
    get :who_created, on: :member
  end
  resources :quizzes do 
    get :search
  end

  scope '(:locale)' do 
    resources :quizzes 
    resources :line_items
    resources :lists
     
    root 'explore#index', as: 'explore_index', via: :all 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
