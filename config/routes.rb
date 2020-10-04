Rails.application.routes.draw do
  get 'static_pages/help'
  get 'static_pages/contact'
  namespace :shopping do 
    resources :womens
  end 
  root to: "static_pages#home"
end
