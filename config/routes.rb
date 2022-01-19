Rails.application.routes.draw do
  devise_for :users do
      get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'home/index'
  get 'home/about'
  
  resources :clients
  resources :grupo_recursos
  get 'tabela_compras/planilha'
  post 'tabela_compras/newPlanilha'
  resources :tabela_compras
  resources :recursos
  resources :suppliers
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
