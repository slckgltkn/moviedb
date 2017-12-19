Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/yerli'

  get 'welcome/yabanci'

  get 'welcome/yonetmenler'

  get 'welcome/iletisim'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "posts#index"
  devise_for :users
  resources :posts do
    member do
      put "like", to: "posts#like"
      put "unlike", to: "posts#unlike"
    end
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
