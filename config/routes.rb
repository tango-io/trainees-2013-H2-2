Kickstarter::Application.routes.draw do
  root 'kickstarter#index'
  devise_for :users
  resources :projects do
    resources :comments
    resources :pledges
    resources :faqs
    resources :backers
  end
  resources :users
  resources :messages
  get 'discovers/popular', to: 'discovers#popular'
  get 'discovers/recently',to: 'discovers#recently'
  get 'discovers/endingsoon', to: 'discovers#endingsoon'
  get 'discovers/smallprojects', to: 'discovers#smallprojects'
  get 'discovers/mostfunded', to: 'discovers#mostfunded'
  resources :discovers
  resources :pages
  resources :subcategories
  resources :categories
end
