Rails.application.routes.draw do
  root to: 'lists#index'

  get "about_page", to: "application#about_page"
  get "static_page", to: "application#static_page"

  resources :lists, only: %i[index show create new destroy] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
