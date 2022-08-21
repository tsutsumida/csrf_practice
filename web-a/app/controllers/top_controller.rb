class TopController < ApplicationController
  def index
    user = User.find_by(id: 1)
    @posts = user.posts
  end
end
