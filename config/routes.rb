Rails.application.routes.draw do

  resources :restaurants, only: %i[index show destroy] do
    resources :reviews, only: :create
  end


  root to: 'pages#home'
end
