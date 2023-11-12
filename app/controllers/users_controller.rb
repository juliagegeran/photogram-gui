class UsersController < ApplicationController 
  def home
    redirect_to("/users")
  end

  def index
    render({:template => "users_templates/index"})
  end

  def add
    new_user = User.new
    new_user.username = params.fetch("username")
    new_user.save
    redirect_to("/users/#{new_user.username}")
  end

  def show
    the_user = params.fetch("username")
    @user_record = User.where(:username => the_user).first
    
    render({:template => "users_templates/show"})
  end

  def modify
    old_username = params.fetch("old_username")
    new_username = params.fetch("new_username")
    user_record = User.where(:username => old_username).first
    user_record.username = new_username
    
    user_record.save
    redirect_to("/users/#{new_username}")
  end
end
