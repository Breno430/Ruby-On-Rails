Rails.application.routes.draw do
  resources :departamento1s
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy]
  root to: "produtos#index"
end