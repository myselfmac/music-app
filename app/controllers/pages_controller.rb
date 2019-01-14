class PagesController < ApplicationController
 def index
 end
 def about
 end
 def SignUp
 	@user = User.new(:username => params[:username], :pass => params[:pass], :email => params[:email])
    if @user.save
      redirect_to :action => "index"
    else
      render json: params[:username]
    end
 end
 def Login
 	info = User.where(["username = ? and pass = ?", params[:username], params[:pass]])
     if info.present?
         redirect_to :controller => "user", :action => "Search", :credential => info
     else
         redirect_to :action => "index"
     end
 end
end