Rails.application.routes.draw do

    scope '/api' do
        resources :leads
        resources :opportunities
        resources :tasks
        resources :contacts
        resources :notes
    end

    root 'welcome#index'

    get "*foo" => "welcome#index"

end