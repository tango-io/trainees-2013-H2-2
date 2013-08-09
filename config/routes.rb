Kickstarter::Application.routes.draw do

   root 'kickstarter#index'
   resources :projects
   resources :discovers
   resources :pages
   resources :subcategories
   resources :categories
end
