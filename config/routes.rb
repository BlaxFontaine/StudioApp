Rails.application.routes.draw do
  devise_for :organizations
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :organizations do
    resources :nodes, only: [ :show, :new, :create, :edit, :update ]
  end
end
