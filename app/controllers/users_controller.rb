class UsersController < ApplicationController
    before_action :find_user, only: %i[edit update]
  def index
  end
  def edit
  end

  def update
    @user.update(users_params)
    redirect_to root_path
  end

  def show
  end

  private

  def users_params
    params.require(:user).permit(:last_name, :first_name,:address, :phone, :email, :story, :photo)
  end

  def find_user
    @user = User.find(params[:id])
    authorize @user
  end
end
