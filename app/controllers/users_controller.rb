class UsersController < ApplicationController
  def show
    @user = User.find_by params[:id]
    if @user.nil?
      flash[:danger] = t ".danger"
      redirect_to root_url
    end
  end
end
