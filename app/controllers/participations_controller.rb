class ParticipationsController < ApplicationController
  def create
    @classroom = Classroom.find_by id: params[:classroom_id]
    current_user.participations.create! classroom_id: @classroom.id
    redirect_to @classroom
  end

  def destroy
    @classroom = Participation.find_by(id: params[:id]).classroom
    current_user.participations.destroy params[:id]
    redirect_to @classroom
  end
end
