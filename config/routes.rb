Rails.application.routes.draw do
  get 'phonemes/index'
  get 'language_sounds/index'
  root "languages#index"

  resources :languages do
    resources :phonemes
  end
  resources :sounds
  resources :language_sounds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
