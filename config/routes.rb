Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/home'
  get '/women', to:'shopping/womens#women_home', as: 'women'
  namespace :shopping do 
    resources :womens
    resources :men
  end
  root to: 'static_pages#home'

  constraints subdomain: "admin" do
      namespace :dashboard do
        resources :womens
        # get 'home/index'
        root to: 'home#index'
    end
  end
  
  
end
