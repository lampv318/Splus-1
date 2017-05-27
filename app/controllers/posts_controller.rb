class PostsController < ApplicationController
  before_action :correct_user, only: :destroy
  def create
    @post = current_user.posts.build post_params
    if @post.save
      flash[:success] = "Post created!"
      redirect_to @post.classroom
    else
      flash[:danger] = "Can't create post, try again!"
      redirect_to :back
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end

  private

  def post_params
    params.require(:post).permit :content, :title, :classroom_id, :picture
  end

  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to root_url if @post.nil?
  end
end
