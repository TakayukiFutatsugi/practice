class UsersController < ApplicationController
  before_action :authenticate_client!
  
  def index
    @entries = Entry.all
  end

  def show
     @user = User.find_by(id: params[:id])
  end
end
