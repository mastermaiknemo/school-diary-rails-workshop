Rails.application.routes.draw do
  
  devise_for :users
root 'students#index'

resources :teachers do
	get :subjects
end

get '/subjects/:id', to: 'subjects#index'

resources :reports do
	resources :subjects
end

  resources :students do
    get :subjects
  end
end
