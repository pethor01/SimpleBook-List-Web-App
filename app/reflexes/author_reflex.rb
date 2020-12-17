# frozen_string_literal: true

class AuthorReflex < ApplicationReflex

  def create
    author = Author.new(author_params)
    if author.valid?
      author.save
    end
  end
  
  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end

end
