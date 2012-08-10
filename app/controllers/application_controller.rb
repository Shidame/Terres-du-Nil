class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :current_city

  def current_user
    # autolog with first user
    #return @current_user = User.first

    return nil if cookies.signed[:persistence_token].blank?
    @current_user ||= User.find_by_persistence_token(cookies.signed[:persistence_token])
  end

  def current_city
    return City.find(session[:current_city_id]) if session[:current_city_id]
    @current_city ||= City.where(user_id: current_user).first
  end
end
