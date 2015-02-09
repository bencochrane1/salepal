Rails.application.routes.draw do

    scope '/api' do
        resources :leads
        resources :opportunities
        resources :tasks
        resources :contacts
        resources :notes
        resources :sessions
    end

    root 'welcome#landingpage'
    get "/dashboard" => "welcome#index"
    get "*foo" => "welcome#index"

    get "/auth/:provider/callback" => "sessions#create"
    get "auth/failure", to: redirect('/')
    get "signout", to: "sessions#destroy", as: "signout"

end


  
