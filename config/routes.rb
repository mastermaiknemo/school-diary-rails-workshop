Rails.application.routes.draw do
  
devise_for :users
root 'teachers#index' 

resources :teachers do
	resources :subject_items
end

resources :subject_items

  resources :students do
    resources :subject_items
  end
end
