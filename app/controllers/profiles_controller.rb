class ProfilesController < ApplicationController
  before_filter :authenticate_user! 
  # add devise helper to make sure we HAVE a current user

  def show
    @user = if params[:user_id]
      User.find(params[:user_id])
    elsif current_user
      current_user
    else
      authenticate_user!
    end

    @profile = @user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    @profile.update_attributes params[:profile]
    redirect_to current_user_profile_path
  end

end
