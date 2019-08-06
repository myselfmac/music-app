# frozen_string_literal: true

# this controller contain methods which is user action
class UserController < ApplicationController
  def search
    @artist = params[:artist]
  end

  def history
    @history = History.find(params[:id])
  end

  def delete_history
    History.find(params[:id]).destroy
  end

  def logout
    redirect_to controller: "pages", action: "index"
  end
end
