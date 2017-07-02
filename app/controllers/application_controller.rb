class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private
 # #10
   def require_sign_in
     unless current_user
       flash[:alert] = "You must be logged in to do that"
 # #11
       redirect_to new_session_path
     end
   end
   
end
