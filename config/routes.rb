Rails.application.routes.draw do
  post   'posts/create'
  get    'posts/read/:id', to: 'posts#read'
  delete 'posts/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
