Rails.application.routes.draw do
  root	"users#admin"
  resources :posts
  resources :users, only: [:show]

  scope '/admin' do
	# get :users, to: "users#admin"
  	root	"admin#index"
  	resources :users, only: [:index, :show, :edit, :update, :create, :destroy]
  end  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
