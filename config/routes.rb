Kickstarter::Application.routes.draw do
   root 'kickstarter#index'
   resources :projects do
     resources :comments
     resources :pledges
   end
   resources :discovers
   resources :pages
   resources :subcategories
   resources :categories
end
