Rails.application.routes.draw do
  resources :example_records
  root to: "example_records#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
