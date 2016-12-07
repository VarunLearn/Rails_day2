class PasswordController < ApplicationController

  def check
    @password = params[:password]
    @user = params[:user]

    # if user submits a password or username
    if params[:password] != nil && params[:user] != nil

      # if the user input is empty
      if @user == ""
        flash.now[:alert] = "Enter username"
      # if username is more than 6
      elsif @user.length > 6
        flash.now[:alert] = "The username is too long"
      # if the password input is empty
      elsif @password == ""
        flash.now[:alert] = "Enter password"
      else
        flash.now[:alert] = "Good job! Your password and username are valid!"
      end

    end


  end
end
