Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"

  get "about-me", to: "pages#about"
  get "contact", to: "pages#contact"

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
