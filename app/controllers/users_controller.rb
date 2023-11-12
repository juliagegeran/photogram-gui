class UsersController < ApplicationController 
  def home
    redirect_to("/users")
  end

  def index
    render(:template => "user_templates/index")
  end
end
