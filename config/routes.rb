Rails.application.routes.draw do

    scope '/api' do
        resources :leads
        resources :opportunities
    end

    root 'welcome#index'

    get "*foo" => "welcome#index"

end