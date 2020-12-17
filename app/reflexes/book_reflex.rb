# frozen_string_literal: true

class BookReflex < ApplicationReflex

  def create
    @book = Book.new(book_params)
    if @book.valid?
      @book.save
    end
  end

  private

  def book_params
    params.require(:book).permit(:author_id ,:name, :description, :status)
  end

end
