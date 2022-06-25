class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
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

    

    private
    def book_params
        params.require(:book).permit(:title, :status, :author, :borrowed_at, :returned_at)
    end
end