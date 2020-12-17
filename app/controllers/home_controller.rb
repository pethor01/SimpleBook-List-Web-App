class HomeController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @all_books = Book.all_books
    p @all_books.length
  end

end
