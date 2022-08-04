Rails.application.routes.draw do

  get 'employees/index'
  get 'employees/show'
  get 'employees/edit'
  get 'employees/new'
  resources :pens
  get 'houses/index'
  get 'houses/show'
  get 'houses/edit'
  get 'houses/create'
  get 'cars/index'
  get 'cars/show'
  get 'cars/create'
  get 'cars/update'
  get 'cars/edit'
  get 'showroom/index'
  get 'showroom/show'
  get 'showroom/create'
  get 'showroom/update'
  get 'showroom/edit'
  resources :bikes
  resources :authors
  get 'books/index'
  get 'books/show'
  post 'books/create'
  get 'books/new'
  get 'books/update'
  delete 'buses/delete'
  resources :plains
  resources :companies
  resources :houses
  resources :buses
  resources :employees
#  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
