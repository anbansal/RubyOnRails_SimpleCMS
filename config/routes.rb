Rails.application.routes.draw do
  
  
  root :to => 'public#index'


  get 'show/:permalink', :to => 'public#show', :as => 'public_show'
  
  get 'admin', :to => "access#menu"
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'



  resources :admin_users do

    member do

      get :delete

    end

  end


  resources :subjects do

    member do

      get :delete

    end

  end


  resources :pages do

    member do

      get :delete

    end

  end


  resources :sections do

    member do

      get :delete

    end

  end

  get 'demo/hello'
  get 'demo/index'
  get 'demo/other_hello'
  get 'demo/lynda'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end