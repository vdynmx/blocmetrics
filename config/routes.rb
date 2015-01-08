Blocmetrics::Application.routes.draw do
  devise_for :users
  resources :events

  root to: 'welcome#index'
end
