class CommentsController < ApplicationController
  before_action :logged_in_user
  before_action :set_user_id

  def create
    @post = Post.find(params[:post_id])
    #投稿に紐づいたコメントを作成
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      render :index
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render :index
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :post_id, :user_id)
  end
end