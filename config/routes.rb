Rails.application.routes.draw do
  resources :songs do
    collection do
      get 'search'
    end
  end
  root "songs#index"
end
