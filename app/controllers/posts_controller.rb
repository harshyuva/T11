class PostsController < ApplicationController
 after_action :set_user, only: [:show, :update, :edit, :destroy]
  def index
    #debugger
    @user = User.find(params[:user_id])
    @posts = @user.posts.all
  end

  def new
    
    @post = Post.new
  end

  def create
    #debugger
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
   
      redirect_to root_path
  end

  def edit
    #debugger
    #@post = Post.find(params[:id])
  end

  def update
    #debugger
    # @post = Post.find(params[:id])
     @post.update(post_params)
      redirect_to root_path
    
  end

  def show
    #debugger
   # @post = Post.find(params[:id])
  end

  def destroy
     #debugger
    # @post =Post.find(params[:id])
     @post.destroy
     redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
        
         def set_user
    @user = User.find(params[:id])
  
  end
end
