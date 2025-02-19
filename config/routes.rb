Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[new create index]
  end
  resources :reviews, only: %i[show edit update destroy]
end
