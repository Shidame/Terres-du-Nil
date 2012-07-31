class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.persistence_token = User.generate_token
    if @user.save
      cookies.signed[:persistence_token] = @user.persistence_token
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      redirect_to root_url
    end
  end
end
