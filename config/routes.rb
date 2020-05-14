Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses
    resources :ingredients, only: [:index, :show]
  end

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
end
