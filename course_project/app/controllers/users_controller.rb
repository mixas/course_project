class UsersController < ApplicationController
  
  before_filter :authentificate, :only => [:edit, :update, :show]
  before_filter :correct_user, :only => [:edit, :update, :show]
  
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path(@user)
    else
      sign_in(@user)
      @title = "Sign up"
      render 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      redirect_to user_path(@user.id)
    else
      @title = 'Edit user'
      render 'edit'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @title = "User #{@user.name}"
  end
  
  def edit
    @user = User.find(params[:id])
    @title = "Edit user #{@user.name}"
    render 'edit'
  end
  
  private
  
  def authentificate
    deny_access unless signed_in?
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path unless current_user?(@user)
  end
  
end
