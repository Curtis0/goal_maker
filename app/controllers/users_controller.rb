class UsersController < ApplicationController
  before_action :params_find, only: [ :show, :edit, :update, :destroy ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    if @user.save
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def update
  end

  def destroy
  end

  def home
  end


  private


  def params_find
    @user = User.find(params[:id])
  end

  def params_user
    params.require(:user).permit( #Why here do we use ":user" and not "@user"?
                                  #BECAUSE we are referring to the 'object' :user not the 'variable' @user.
      :name,
      :email,
      :password,
      :password_confirmation
      )

  end
end
