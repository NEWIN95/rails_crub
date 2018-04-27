class PostsController < ApplicationController
  def index
  end

  def new
  end

  def update
  end

  def show
  end

  def create
    @post_create = Post.new
    @post_create.title = params[:head]
    @post_create.content = params[:inside]
    @post_create.save
    redirect_to '/posts/index'
  end

  def edit
  end

  def destroy
  end
end
