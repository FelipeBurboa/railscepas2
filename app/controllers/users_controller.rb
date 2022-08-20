class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :auth_user
    def index
        @users = User.order(created_at: :desc)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_url, notice: 'User was successfully updated'
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit({role_ids:[]})
    end

    def auth_user
        unless current_user.roles.pluck(:name) == ["admin"]
      redirect_to root_path
        end
    end


end