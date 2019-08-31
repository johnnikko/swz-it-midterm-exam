class CommentsController < ApplicationController
  def create
    @disaster = Disaster.find(params[:disaster_id])
    @comments = Comment.new(comment_params)
    @comments.disaster_id = @disaster.id
    if @comments.save
      flash[:success] = "Comment added"
      redirect_to disaster_path(@disaster)
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:users_comment)
  end
end