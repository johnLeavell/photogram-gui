class UsersController < ApplicationController

  def index
    matching_users = User.all
    @list_of_users = matching_users
    render({ template: "user_templates/index.html.erb" })
  end

  def new
    user_name = params.fetch("path_username")
    matching_usernames = Userw.where({ username: "user_name"})

    @the_user = matching_usernames.first

    render({ template: "user_templates/new_user.html.erb" })
  end

  def show
    @user = User.find_by(username: params[:username])

    render({ template: "user_templates/show.html.erb" })
  end


end
