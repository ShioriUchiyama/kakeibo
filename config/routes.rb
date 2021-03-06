Rails.application.routes.draw do
  get 'tasks/new'
  get 'sessions/new'
  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  root "top#index"
  post "income_values/new(/:name)" => "income_values#new"
  post "fixedcost_values/new(/:name)" => "fixedcost_values#new"
  post "variablecost_values/new(/:name)" => "variablecost_values#new"

	get "balance_confirm" => "balance_confirm#top"
	post "balance_confirm/show(/:name)" => "balance_confirm#show"
  post "blance_confirm/show_year(/:name)" => "balance_confirm#show_year"

  resources :incomes
  resources :fixedcosts
  resources :variablecosts
  resources :income_values
  resources :fixedcost_values
  resources :variablecost_values
end
