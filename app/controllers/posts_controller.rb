class PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def create
    Post.create(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
