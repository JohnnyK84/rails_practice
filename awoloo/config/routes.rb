Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #Create resource wtih resource method
  resources :products
  #root set to make this home page
  root 'awoloo#index'
  #regular route to access other pages
  get 'about' => 'pages#about'
end
