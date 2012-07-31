class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      cookies.signed[:persistence_token] = user.persistence_token
      redirect_to root_path
    else
      flash[:error] = 'Email or password is invalid'
      flash[:email] = params[:session][:email]
      redirect_to root_path
    end
  end


  def destroy
    cookies.signed[:token] = nil
    redirect_to root_path
  end
end
