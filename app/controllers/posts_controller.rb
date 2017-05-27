class PostsController < ApplicationController
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to @post.classroom
    else
      flash[:danger] = "Can't create post, try again!"
      redirect_to :back
    end
  end

  def destroy
  end

  private

    def post_params
      params.require(:post).permit(:content, :title, :classroom_id)
    end
end
