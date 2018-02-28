Rails.application.routes.draw do
  
  
  resources :newemails
  devise_for :newemployees
  devise_for :admins
  devise_for :employees
  resources :students
  resources :employees
  resources :admins
  resources :interviews
   resources :newemployees

 
  get 'welcome/index'
  root "welcome#index"

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
