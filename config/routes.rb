Rails.application.routes.draw do
  
devise_for :users
root 'students#index' 

resources :teachers do
	get :subject_items
end

resources :subject_items

  resources :students do
    get :subject_items
  end
end
