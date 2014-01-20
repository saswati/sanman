class UsersController < ApplicationController
  before_filter :authenticate_user!
  #UserMailer.registration_confirmation(@user).deliver
  def index
    @users = User.all
    @profiles=Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  private
  def currect_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(&user)
  end

end


