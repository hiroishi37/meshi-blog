class CommentsController < ApplicationController

  def index

  end

  def create
    @comment = @meshi.comments.new(comment_params)
    if @comment.save
      redirect_to meshi_comments_path(@meshi), notice: 'メッセージが送信されました'
    else
      @comments = @meshi.comments.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :image).merge(user_id: current_user.id)
  end
end