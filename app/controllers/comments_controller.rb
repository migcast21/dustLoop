class CommentsController < ApplicationController

    def create
        @dustloop = Dustloop.find(params[:dustloop_id])
          @comment = @dustloop.comments.create(params[:comment].permit(:name, :comment))
        redirect_to dustloop_path(@dustloop)    
    end
  
    def destroy
        @dustloop = Dustloop.find(params[:dustloop_id])
        @comment = @dustloop.comments.find(params[:id])
        @comment.destroy
        redirect_to dustloops_path(@dustloop)
    end

end
