class PostsController < ApplicationController

  def index
    @posts = current_user.posts
    render 'index'
  end
end
