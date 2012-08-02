class MainController < ApplicationController
  def index
    if flash[:errors]
      @user = flash[:errors]
    else
      @user = User.new()
    end

    @articles = Article.order("created_at DESC").last(5)
  end
end
