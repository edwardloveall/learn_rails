class PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def create
    post = Post.create(post_params)

    render json: post
  end

  def show
    post = find_post

    render json: post
  end

  def update
    post = find_post
    post.update(post_params)

    render json: post
  end

  def destroy
    post = find_post
    post.destroy

    render json: post
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post
    Post.find(params[:id])
  end
end
