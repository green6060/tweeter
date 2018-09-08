class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_post
  def index
    @comments = @post.comments.order(created_at: :asc)
  end

  def show

  end

  def new
    @comment = @post.comments.new

  end

  def create
    @comment = @post.comments.new(comment_params)

    if @comment.save
      redirect_to post_comments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_comments_path
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_comments_path
  end 

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
  
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:message, :post_id)
  end

end
