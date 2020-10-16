class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]

    if session[:name] == "" || session[:name] == nil
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
