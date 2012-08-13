class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.persistence_token = User.generate_token

    c = CityCreator.new(@user)
    city = c.create!

    if @user.save
      cookies.signed[:persistence_token] = @user.persistence_token
      session[:current_city_id] = city.id
      redirect_to game_path
    else
      flash[:errors] = @user
      redirect_to root_url
    end
  end
end
