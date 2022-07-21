Rails.application.routes.draw do
  get 'books/delete'
  resources :trains
  resources :fusers
#  resources :laptops
  resources :animals

  delete '/laptops' => 'laptops#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
