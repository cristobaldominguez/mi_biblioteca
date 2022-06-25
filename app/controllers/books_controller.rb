class BooksController < ApplicationController
    before_action :set_book, only: %i[show edit update]

    def index
        @books = Book.all
    end

    def show
    end

    def new
        @book = Book.new
        @statuses = Book.statuses.keys
    end

    def create
        @book = Book.new(book_params)

        respond_to do |format|
            if @book.save
                format.html { redirect_to book_path(@book.id), notice: 'El libro fue creado exitosamente' }
            else
                format.html { render :new }
            end
        end
    end

    def edit
        @statuses = Book.statuses.keys
    end

    def update
    end

    private

    def set_book
        @book = Book.find(params[:id])
    end

    def book_params
        params.require(:book).permit(:title, :status, :author, :borrowed_at, :returned_at)
    end
end