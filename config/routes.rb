Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # route read all
  # route read one
  # route create (get new/post create)
  # route nested in lists
    # create a bookmark : add a bookmark [list/movie] (get new/post create)
    # delete a bookmark : delete bookmarks/:id
    root to: "lists#index"
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy] 
end
