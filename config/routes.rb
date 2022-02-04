Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  get :test, to: 'welcome#test'
  get '/s/:slug', to: 'links#show', as: :short

  namespace :admin do
    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    get "register", to: "sessions#register"
    post "register", to: "sessions#signup"
    delete "logout", to: "sessions#destroy"

    get 'dashboard' => 'welcome#dashboard'

    resources :blogs do
      collection do
        post :upload
      end
      member do
        get :generate
      end
    end

  end

end
