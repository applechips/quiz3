class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    idea     = Idea.find params[:idea_id]
    l        = Like.new user: current_user, idea: idea

    if l.save
      redirect_to idea_path(idea), notice: "Liked!"
    else
      flash[:alert]  = "Can't Like"
      render "ideas/show"
    end
  end


  def destroy
    idea     = Idea.find params[:idea_id]
    l        = Like.find params[:id]

    if l.destroy
      redirect_to idea_path(idea), notice: "Unliked!"
    else
      redirect_to idea_path(idea), alert: "Can't unlike"
    end
  end

end
