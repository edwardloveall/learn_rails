class PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def create
    Post.create(params)
  end
end
