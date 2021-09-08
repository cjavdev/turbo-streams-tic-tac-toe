Rails.application.routes.draw do
  # /games/4/moves
  resources :games do
    resources :moves, only: [:create]
  end

  root to: 'games#index'
end
