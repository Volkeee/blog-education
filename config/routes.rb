Rails.application.routes.draw do
  get 'users/new'

  get 'welcome/index'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'

  get  '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
