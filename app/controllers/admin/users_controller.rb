module Admin
  class UsersController < Admin::ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
      @users = User.all
      render :index, locals: { users: @users }
    end

    def show
      render :show, locals: { user: @user }
    end

    def new
      @user = User.new
      render :new, locals: { user: @user }
    end

    def edit
      render :edit, locals: { user: @user }
    end

    def create
      @user = User.new(user_params)

      if @user.save
        redirect_to admin_users_url, notice: 'User was successfully created.'
      else
        render :new, locals: { user: @user }
      end
    end

    def update
      if @user.update(user_params)
        redirect_to admin_users_url, notice: 'User was successfully updated.'
      else
        render :edit, locals: { user: @user }
      end
    end

    def destroy
      @user.destroy
      redirect_to admin_users_url, notice: 'User was successfully destroyed.'
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :admin)
    end
  end
end
