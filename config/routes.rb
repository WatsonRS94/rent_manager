Rails.application.routes.draw do
  namespace :admin do
    get '/dashboard', to: 'dashboard#index'
    resources :users, except: :show do
      member do
        get :edit_photo; post :edit_photo
      end
      collection do
        get :search
      end
    end
    post '/authenticate', to: 'login#authenticate'
    delete '/logout', to: 'login#logout'
    get '/', to: 'login#index'
  end
  get '/', to: 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
