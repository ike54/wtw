class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all
  protect_from_forgery

  before_filter :prepare_for_mobile


  private

  def mobile_device?
  	if session[:mobile_param]
  		session[:mobile_param] == "1"
  	else
  	    requeset.format = :mobile if request.user_agent =~ /Mobile|webOS|iPhone/
  	end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
  	session[:mobile_param] = params[:mobile] if params[:mobile]
  	request.format = :mobile if mobile_device?
  end
end