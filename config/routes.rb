Rails.application.routes.draw do
  post   'posts/create'
  get    'posts/read/:id', to: 'posts#read'
  delete 'posts/delete/:id', to: 'posts#delete'
  get    'posts/for/:user_id', to: 'posts#for_user'

  get 'debug', to: 'debug#env'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
