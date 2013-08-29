Kickstarter::Application.routes.draw do
  root 'kickstarter#index'
  devise_for :users
  resources :projects do
    resources :comments
    resources :pledges
    resources :faqs
  end
  resources :users
  get 'discovers/popular', to: 'discovers#popular'
  get 'discovers/recently',to: 'discovers#recently'
  get 'discovers/endingsoon', to: 'discovers#endingsoon'
  resources :discovers
  resources :pages
  resources :subcategories
  resources :categories
end
