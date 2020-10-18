class PostsController < ApplicationController
  # def index
  #   @posts = Post.includes(:user).order("created_at: :desc")
  # end

  def index
    @posts = Post.all
  end
end
