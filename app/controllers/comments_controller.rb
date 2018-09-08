class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :destroy]
  def index
    @comments = Comment.all
  end

  def show

  end

  def new
    @comment = Comment.new
    render partial: 'form'
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to post_comments_path(post.id)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_comments_path(post.id)
    else
      render :edit
    end
  end

  def destroy

  end 

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:message, :post_id)
  end

end
