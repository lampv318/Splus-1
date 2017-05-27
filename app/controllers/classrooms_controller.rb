class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find_by id: params[:id]
    @post = current_user.posts.build
    if @classroom.nil?
      flash[:danger] = t ".danger"
      redirect_to root_url
    end
    @posts = @classroom.posts
  end
end
