Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create 
    delete 'logout' => :destroy
  end

  
  resources :friendships
  resources :comments
  resources :questions
  resources :quizzes do
    resources :attempts
  end
  
  resources :users

  scope '(:locale)' do 
    resources :quizzes do
      get :who_created, on: :member
    end
    resources :line_items
    resources :lists
     
    root 'explore#index', as: 'explore_index', via: :all 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
