class CommentsController < ApplicationController
  before_action :set_post, only: [:create]
  def create
    @comment = @post.comments.create(body: params[:comment_body], user: current_user)

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          "post#{@post.id}comments",
          partial: "posts/post_comments",
          locals: { post: @post }
        )
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if(@comment.user == current_user)
      @comment.destroy

      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.remove(
            "post#{ @comment.post.id }ModalComment#{ @comment.id }"
          )
        end
      end
    end
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
