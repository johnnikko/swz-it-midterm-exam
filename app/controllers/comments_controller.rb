class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]
  def create
    @disaster = Disaster.find(params[:disaster_id])
    @comments = Comment.new(comment_params)
    @comments.disaster_id = @disaster.id
    @comments.user_id = current_user.id
    if @comments.save
      flash[:success] = "Comment added"
      redirect_to disaster_path(@disaster)
    end
  end
  def destroy
    @comment.destroy
    flash[:danger] = "Comment deleted"
    redirect_to disaster_path(params[:disaster_id])
  end
  private
  def comment_params
    params.require(:comment).permit(:users_comment)
  end
  def set_comment
    @comment = Comment.find(params[:id])
  end
end