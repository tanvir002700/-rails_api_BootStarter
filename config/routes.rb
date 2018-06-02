Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'sign_up', to: 'registrations#create'
      post 'sign_in', to: 'seasons#create'
    end
  end
end
