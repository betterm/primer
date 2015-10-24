class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:success] = 'Вход выполнен'
      redirect_to user
    else
      flash.now[:danger] = 'Неправильный адрес электронной почты или пароль'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
