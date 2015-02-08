Rails.application.routes.draw do

    scope '/api' do
        resources :leads
    end

    root 'welcome#index'

    get "*foo" => "welcome#index"

end