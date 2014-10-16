Hwtracker::Application.routes.draw do

  root :to => 'pages#index'
  get 'dashboard' => 'pages#dashboard', as: 'dashboard'
  get 'report' => 'pages#report', as: 'report'
  
  get 'score' => 'metrics#new', as: 'score'
  post 'score/edit' => 'metrics#create'
  get 'score/edit' => 'metrics#edit', as: 'edit_score'
  put 'score/edit' => 'metrics#update'
  
  get 'event' => 'events#new', as: 'event'
  post 'events' => 'events#create'
  get 'event/:id/edit' => 'events#edit', as: 'edit_event'
  put 'event/:id/edit' => 'events#update'
  
  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'user_sessions#new', :as => :login
  
  post 'user_sessions' => 'user_sessions#create', as: 'user_sessions'
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'profile' => 'users#show', as: 'profile'
  post 'profile' => 'users#create'
  get 'profile/edit' => 'users#edit', as: 'edit_profile'
  put 'profile' => 'users#update'
  delete 'profile' => 'users#destroy'
end
