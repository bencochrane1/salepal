Rails.application.routes.draw do

  root 'welcome#index'

  scope '/api' do
    resources :leads
  end

  get "*foo" => "welcome#index"

end
