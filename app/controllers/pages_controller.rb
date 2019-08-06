# frozen_string_literal: true

# This is page that you see whenever page open
class PagesController < ApplicationController
  def index; end

  def about
    render json: 'Hey there'
  end

  def sign_up
    @user = User.new(username: params[:username],
                     pass: params[:pass], email: params[:email])
    if @user.save
      redirect_to action: 'index'
    else
      render json: params[:username]
    end
  end

  def log_in
    info = User.where(['username = ? and pass = ?',
                       params[:username], params[:pass]])
    if info.present?
      redirect_to controller: 'user', action: 'search', credential: info
    else
      redirect_to action: 'index'
    end
  end
end
