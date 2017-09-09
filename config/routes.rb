Rails.application.routes.draw do
  get 'welcome/index' => 'welcome#index'

  resources :articles do
    resources :comments
  end

  get '/articles/:id' => 'articles#show'
  get '/articles' => 'articles#index'
  root 'welcome#index'
  delete '/articles/:id'  => 'articles#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
