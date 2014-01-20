class ProfilesController < ApplicationController
 # before_filter :authenticate_user!

  def show
    @profile= current_user.profile
  end


  def edit
    @title = "Profile"
    @profile= current_user.profile
  end

  def update
    @profile= current_user.profile
    a= params[:profile]
    if @profile.update_attributes(a)
      flash[:success] = "Profile Updated."                                            #After delete the params check the difference between create and update
      redirect_to @profile                                                               #  Parameters: {"utf8"=>"✓", "authenticity_token"=>"KPJGSVoW2naygRG1HFKCLmOtyZdold+zyfKadUMzZcA=", "user"=>{"sufix"=>"miss", "first_name"=>"addf", "last_name"=>"vcvjhgjh", "email"=>"dfgfhgk", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign up", "id"=>"8"}
    else
      @title = "Edit profile"
      render 'edit'
    end
  end

  def index
    @profiles=Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end





end

