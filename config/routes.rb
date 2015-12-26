Rails.application.routes.draw do
  resources :pessoas
  root to: "pessoas#index"
	get "/busca_cep/:cep" => "pessoas#cep", as: :busca_cep

end
