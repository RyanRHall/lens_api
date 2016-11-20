Rails.application.routes.draw do
  resources :lenses, only: [:index] do
    resources :annotations, only: [:index]
  end

  get "articles/summary", to: "articles#summary"
  get "articles/rating", to: "articles#rating"
end
