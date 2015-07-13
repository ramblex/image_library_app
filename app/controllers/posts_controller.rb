class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(permitted_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :new
  end

  def show
    @post = Post.find(params[:id])
  end

  def permitted_params
    params.require(:post).permit(:title, :content, post_images_attributes: [
      :id,
      :image_library_upload_id,
      :_destroy
    ])
  end
end
