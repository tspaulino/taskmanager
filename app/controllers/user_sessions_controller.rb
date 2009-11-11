class UserSessionsController < ApplicationController
  skip_before_filter :require_user, :except => :destroy
  before_filter :skip_login, :only => :new
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Welcome, #{@user_session.user.login}!"
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
	def destroy
	  @user_session = UserSession.find
	  @user_session.destroy
	  flash[:notice] = "You have been logged out."
	  redirect_to root_url
	end	
	
	protected
	
	def skip_login
	  redirect_to root_url if logged_in?
	end
end
