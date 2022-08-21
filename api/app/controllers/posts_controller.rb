class PostsController < ApplicationController

  def destroy
    post = Post.find_by(id: params[:id])

    if post
      post.destroy!
      logger.debug("delete a post has #{params[:id]}(id).")
    else
      logger.debug("Database doesn't have a post of #{params[:id]}(id).")
    end
  end
end
