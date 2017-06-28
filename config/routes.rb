Rails.application.routes.draw do
  root :to => 'works#index'

  resources :works do
    post 'rate'
  end
end
