Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  post 'books', to: 'books#create'

  # locahost:3000/books/1
  get 'books/:id', to: 'books#show', as: 'book'

  root 'books#index'
end
