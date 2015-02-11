Rails.application.routes.draw do

  get 'email/index'

    scope '/api' do
        resources :leads
        resources :opportunities
        resources :tasks
        resources :contacts
        resources :notes
        resources :sessions
        resources :emails
        get '/test' => "emails#test"
    end

    root 'welcome#landingpage'
    get "/dashboard" => "welcome#index", as: :dashboard

    get "/auth/:provider/callback" => "sessions#create"
    get "/auth/failure", to: redirect('/')
    get "/signout", to: "sessions#destroy", as: "signout"

    get "*foo" => "welcome#index"
end


  
