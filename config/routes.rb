Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  delete '/doses/:id', to: 'doses#destroy'

  concern :doses do
    resources :doses
  end

  resources :cocktails, concerns: :doses
  resources :ingredients, concerns: :doses
end
