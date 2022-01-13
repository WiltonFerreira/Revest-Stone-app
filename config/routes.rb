Rails.application.routes.draw do
  get 'tabela_compras/planilha'
  post 'tabela_compras/savePlanilha'
  resources :tabela_compras
  resources :recursos
  resources :grupo_recursos
  devise_for :users
  #devise_for :users
  get 'home/index'
  get 'home/about'
  resources :suppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
