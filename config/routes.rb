Rails.application.routes.draw do
  
  root to: "welcome#index"
  
  get 'welcome/index'

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  
  get 'calendar_actions/all', to: 'calendar_actions#all'

  resources :calendar_actions


end
