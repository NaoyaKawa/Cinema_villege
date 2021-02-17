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
    
    resources :theaters, only: [:index, :show] do
      resources :favorites, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end
  
  namespace :admin do
    resources :theaters
    resources :magazines
  end
  

  get   'inquiry'         => 'inquiry#index'     # 入力画面
  post  'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post  'inquiry/thanks'  => 'inquiry#thanks'    # 送信完了画面
end
