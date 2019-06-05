Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cases do
    resources :case_actions, only: [:index, :new, :create, :edit, :update]
    resources :case_risks, only: [:index, :new, :create, :edit, :update]
  end
  resources :case_actions, only: :destroy
  resources :case_risks, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
