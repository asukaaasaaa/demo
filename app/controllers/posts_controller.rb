class PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to book_path(@post)
  end

private

  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
