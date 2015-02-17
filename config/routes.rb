Rails.application.routes.draw do

    scope '/api' do
        resources :leads do
            collection { post :import }
        end
        resources :opportunities
        resources :tasks
        resources :contacts
        resources :notes
        resources :sessions
        resources :emails
        get '/test' => "emails#test"
    end

    root 'welcome#landingpage'
    get "/leads" => "welcome#index", as: :all

    get "/auth/:provider/callback" => "sessions#create"
    get "/auth/failure", to: redirect('/')
    get "/signout", to: "sessions#destroy", as: "signout"

    get "*foo" => "welcome#index"
end


  
