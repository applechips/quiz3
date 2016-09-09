class MembersController < ApplicationController
  def create
    idea = Idea.find params[:idea_id]
    m    = Member.new user: current_user, idea: idea

    if m.save
      redirect_to idea_path(idea), notice: "You're a member!"
    else
      redirect_to idea_path(idea), alert: "Already a member"
    end
  end

  def destroy
  end

end
