class BooksController < ApplicationController
    before_action :authenticate_user!

    def new
        @author = Author.find(params[:author])
        p @author.full_name
        @book = Book.new
    end

    def index
        @book = Book.new
        @author = Author.find(params[:author])
        @find_books_by_author = Book.created_books(@author.id)
    end
    
    def show
        @comment = Comment.new
        @book = Book.find(params[:book])
        @comments = Comment.where(book_id: @book.id)
    end
    
end
