class AdminListController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_admin, only: [:edit, :update, :destroy]

  def index
    @admins = Admin.all
  end

  def edit
  end

  def update
    if @admin.update(permitted_params)
      redirect_to admin_list_index_path, notice: "Updated with success!"
    else
      render :edit
    end
  end

  def destroy
    @admin.destroy
    redirect_to admin_list_index_path, notice: "Deleted with success!"
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def permitted_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
