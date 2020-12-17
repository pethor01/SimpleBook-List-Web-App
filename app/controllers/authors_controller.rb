class AuthorsController < ApplicationController
    before_action :authenticate_user!

    def index
        @author = Author.new
        @authors = Author.all
    end

    def new
        @author = Author.new
    end

   
    def create
        author = Author.new(author_params)
        if author.save
            redirect_to authors_path
        end
    end

    def destroy
        author = Author.find(params[:id])
        author.destroy
    end
    
    
    private

    def author_params
        params.require(:author).permit(:first_name, :last_name)
    end
    
end
