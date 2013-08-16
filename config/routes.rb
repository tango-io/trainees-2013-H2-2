Kickstarter::Application.routes.draw do
   root 'kickstarter#index'
   resources :projects do
     resources :comments
   end
   resources :discovers
   resources :pages
   resources :subcategories
   resources :categories
end
