class PostsController < ApplicationController
  def show
    @post = Post.find_by_id params[:slug].to_i
  end
end
