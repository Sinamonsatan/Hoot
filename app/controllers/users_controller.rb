class UsersController < ApplicationController
    def profile
        @userid = params[:user_id]
        @userinfo = User.find(params[:user_id])
        @usercount = @userinfo.tweeets
        @tweeets=Tweeet.all
    end
end
