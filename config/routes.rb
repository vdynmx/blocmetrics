Blocmetrics::Application.routes.draw do
  
  
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
  
  root to: 'events#index'
end
