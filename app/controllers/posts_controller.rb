class PostsController < ApplicationController

  #Display all postS in the descending of time
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new

  end

  # create the post
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  # find the post according to the id
  def show
    @post = Post.find(params[:id])
  end

  private

  #define the post params, permit 2 properties
  def post_params
    params.require(:post).permit(:title, :body)
  end

end

