Blocmetrics::Application.routes.draw do
  devise_for :users
  
  resources :events
  
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
  
  root to: 'welcome#index'
end
