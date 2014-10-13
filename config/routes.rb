Hwtracker::Application.routes.draw do

  root :to => 'pages#index'
  
  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'user_sessions#new', :as => :login
  
  post '/user_sessions' => 'user_sessions#create', as: 'user_sessions'
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'profile' => 'users#show', as: 'profile'
  get 'profile/edit' => 'users#edit', as: 'edit_profile'
  put 'profile' => 'users#update'
  delete 'profile' => 'users#destroy'
end
