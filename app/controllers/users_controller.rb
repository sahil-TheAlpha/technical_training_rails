class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #@user = @user.merge(user_params)
        if @user.save
            flash[:notice] = 'Successfully created account'
            redirect_to root_path
        else
            flash.now[:error] = 'Invalid Creds'
            render :new
        end
   end

   private

   def user_params
       params.require(:user).permit(:username, :email, :password)
   end
end