Rails.application.routes.draw do
  resources :pollbooths
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pollbooths#new'
end
