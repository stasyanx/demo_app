module Users
  class UsersController < ApplicationController
    #before_action :authenticate_user!

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user.update_attributes(users_params)
        render 'show', notice: t('update_success')
      else
        render 'edit' ,alert: t('update_success')
      end
    end



    private

    def users_params
     params.require(:user).permit(:first_name,:last_name,:email,:avatar,:password)
    end
  end
end