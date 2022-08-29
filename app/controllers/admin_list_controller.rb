class AdminListController < ApplicationController
  before_action :authenticate_admin!

  def index
    @admins = Admin.all
  end
end