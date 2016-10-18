Rails.application.routes.draw do
  resources :catalogs do
    collection { post :import}
  end

  get 'catalogs/index'

  get 'catalogs/import'

  devise_for :users
  root to: 'pages#home'
end
