Kickstarter::Application.routes.draw do

   root 'kickstarter#index'
   resources :projects
   resources :discovers

end
