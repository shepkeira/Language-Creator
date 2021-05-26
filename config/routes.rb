Rails.application.routes.draw do
  get 'language_sounds/index'
  root "languages#index"

  resources :languages
  resources :sounds
  resources :language_sounds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
