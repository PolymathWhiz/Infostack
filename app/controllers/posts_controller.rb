class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :destory]

  def new
    @post = Post.new
  end

  def show; end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post was created successfully"
    else
      flash[:danger] = "Problem encountered while creating post"
    end
  end

  def destroy
    @post.destroy
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
