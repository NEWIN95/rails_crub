Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/index'
  get 'posts/new'
  get 'posts/update'
  get 'posts/show:id' => 'posts#show'
  post 'posts/create' =>'posts#create'
  get 'posts/edit'
  get 'posts/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
