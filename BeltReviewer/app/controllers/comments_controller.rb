class CommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @user = User.find(session[:id])
    @comment = Comment.new(comment_params)
    @comment.user = @user
    @comment.event = @event
    @comment.save
    redirect_to event_show_path @event.id
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
