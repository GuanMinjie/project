class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(:account=>params[:account])
    if @user&& @user.auththenticate(params[:password])
      render "users/new"
    else
      puts 123
      render :new
    end
  end
end
