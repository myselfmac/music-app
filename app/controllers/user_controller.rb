class UserController < ApplicationController

  def Search
  	@artist => params[:artist]
  end

  def History
  	@history = History.find(params[:id])
  end

  def Delete_History
    History.find(params[:id]).destroy
  end

  def logout
    redirect_to :controller => "pages", :action => "index"
  end
end