Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  post 'books', to: 'books#create'

  put 'books/:id', to: 'books#update'
  patch 'books/:id', to: 'books#update'

  # /books/1/edit
  get 'books/:id/edit', to: 'books#edit', as: 'books_edit'
  # /books/1
  get 'books/:id', to: 'books#show', as: 'book'

  root 'books#index'
end
