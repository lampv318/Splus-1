class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find_by id: params[:id]
    if @classroom.nil?
      flash[:danger] = t ".danger"
      redirect_to root_url
    end
  end
end
