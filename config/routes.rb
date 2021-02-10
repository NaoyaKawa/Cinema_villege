Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins, controllers: {
    sessions: "admins/sessions",
    registrations: "admins/registrations",
    passwords: "admins/passwords",
  }

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
  }

  scope module: :user do
    get "/" => "homes#top"
    
    resources :users, only: [:show, :edit, :update] do
      collection do
        patch 'withdraw'
      end
    end
    
    resources :theaters, only: [:index, :show]
  end
  
  namespace :admin do
    resources :theaters
  end
end
