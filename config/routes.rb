  Rails.application.routes.draw do
    root 'welcome#index'
    devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
    get 'welcome/index'

    devise_scope :user do
      get '/logout', to: 'devise/sessions#destroy', as: :signout
    end

    # The priority is based upon order of creation: first created -> highest priority.
    # See how all your routes lay out with "rake routes".

    # You can have the root of your site routed with "root"
  

  
end
