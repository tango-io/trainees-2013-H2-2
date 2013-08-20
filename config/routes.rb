Kickstarter::Application.routes.draw do
   root 'kickstarter#index'
   resources :projects
   resources :discovers
   resources :pages
   resources :subcategories
   resources :categories
   get 'logins/log_in', to: 'logins#log_in'
   post 'logins/login', to: 'logins#login'
   resources :logins 
end
