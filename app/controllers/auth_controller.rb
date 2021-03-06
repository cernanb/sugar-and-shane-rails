class AuthController < ApplicationController
  def login
    @user = User.find_by(username: params[:username])
    
    if !@user
      render json: {
        errors: ["Unable to find a user with the provided email"]         
      }, status: 500

    elsif @user && @user.authenticate(params[:password])
      # render "users/users_with_token.json.jbuilder", user: @user
      render json: @user

    else
      render json: {
        errors: ["Password is incorrect"]        
      }, status: 500
    end
  end
end
