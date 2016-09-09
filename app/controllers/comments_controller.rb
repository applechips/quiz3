class CommentsController < ApplicationController

  def create
    @comment = Comment.new params.require(:comment).permit(:body)
    @idea = Idea.find params[:idea_id]
    @comment.idea = @idea
    @comment.user = current_user

    if @comment.save
      redirect_to idea_path(@idea), notice: "Commented!"
    else
      flash[:alert]  = "Can't Comment"
      render "ideas/show"
    end
  end

  def show
    @comment = Comment.new
  end
  def destroy
    c = Comment.find params[:id]
    c.destroy
    i = Idea.find params[:idea_id]
    reidrect_to idea_path(i), notice: "Comment Deleted"
  end

end
