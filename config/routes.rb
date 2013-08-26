Kickstarter::Application.routes.draw do
  root 'kickstarter#index'
  devise_for :users
  resources :projects do
    resources :comments
    resources :pledges
    resources :faqs
  end
  resources :users
  resources :discovers
  resources :pages
  resources :subcategories
  resources :categories
end
