class PostsController < ApplicationController
  def index
    
  end

  def new
  end

  def update
    @post_update = Post.find(params[:id])
    @post_update.title = params[:head]
    @post_update.content = params[:inside]
    @post_update.save
    redirect_to '/posts/index'
  end

  def show
    @post_show = Post.find(params[:id])
  end

  def create
    @post_create = Post.new
    @post_create.title = params[:head]
    @post_create.content = params[:inside]
    @post_create.save
    redirect_to '/posts/index'
  end

  def edit
    @post_edit = Post.find(params[:id])
  end

  def destroy
    @post_destroy = Post.find(params[:id])
    @post_destroy.destroy
    redirect_to '/'
  end
end
