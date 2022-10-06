class WelcomesController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end

 #    def show 
 #      #debugger
 #   @user = User.find(params[:id])
 #   @post = @user.posts
   
 # end

 #  def create
 #    @user = User.find(params[:user_id])
 #    @post = @user.posts.create(post_params)
 #    redirect_to user_path(@user)
 #  end
 
 #  def destroy
 #    @user = User.find(params[:user])
 #    #@post = @user.posts.find(params[:id])
 #    #@post.destroy
    
 #    redirect_to user_path(@user)
 #  end
 
 #  private
 #    def post_params
 #      params.require(:post).permit(:title, :body)
 #    end
end

