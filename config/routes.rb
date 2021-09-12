Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # index
  root to: "urls#index"

  # create new short url
  post "/shorten", to: "urls#create"

  # redirect to external address
  get "/:id", to: "urls#external"

  # API response
  namespace :api, defaults: { format: :json } do 
    resources :shorts, only: [ :index ]
  end

end
