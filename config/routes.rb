Rails.application.routes.draw do
  resources :articulos
  resources :seccions
  resources :capitulos
  resources :titulos
  resources :partes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
