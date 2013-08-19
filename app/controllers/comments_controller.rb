class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment].permit(:text, :body))
    @post.comments << @comment
    @post.save
    redirect_to post_path(@post)
  end
end