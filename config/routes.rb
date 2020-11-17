Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :publishers do
        resources :shops
      end
      resources :shops
    end
  end
end