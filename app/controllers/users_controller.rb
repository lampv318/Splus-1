class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
    if @user.nil?
      flash[:danger] = t ".danger"
      redirect_to root_url
    end
  end
end
