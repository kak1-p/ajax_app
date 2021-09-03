class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  #def new
  #end

  def create
    @posts = Post.order(id: "DESC")
    redirect_to action: :index
  end
end
