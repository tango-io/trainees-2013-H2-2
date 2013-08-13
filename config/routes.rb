Kickstarter::Application.routes.draw do

   root 'kickstarter#index'
   resources :projects
   resources :discovers
   resources :pages
   resources :subcategories
   resources :categories
   #routes login
   get 'logins/signup', to: 'logins#signUp!' 
   get 'logins/login', to: 'logins#logIn!'
end
