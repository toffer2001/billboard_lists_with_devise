Rails.application.routes.draw do
devise_for :users

get '/billboards', to: 'billboards#index'

root 'billboards#index'

  resources :billboards, except: [:index] do
    resources :songs
  end
    
  resources :artists do
    resources :songs
  end

  resources :artists
  
end
