# frozen_string_literal: true

class CommentReflex < ApplicationReflex

  def create
    @comment = Comment.new(comment_params)
    p "hahhhahaha"
    p @comment
    if @comment.valid?
      @comment.save
    end
  end

  
  private

  def comment_params
    params.require(:comment).permit(:user_id ,:book_id, :comment)
  end

end
