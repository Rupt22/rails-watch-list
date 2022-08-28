Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[index show create new destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
