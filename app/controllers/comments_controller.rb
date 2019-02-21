class CommentsController < ApplicationController
  before_action :set_shoe

  def new
    @comment = Comment.new
  end

  def create
    @comment = @shoe.comments.new(comment_params)
    if @comment.save
      redirect_to department_shoe_path(@shoe.department_id, @shoe)
    else
      render :new
    end 
  end
  
  private
    def set_shoe
      @shoe = Shoe.find(params[:shoe_id])
    end
    
    def comment_params
      params.require(:comment).permit(:body, :author)
    end  
end
