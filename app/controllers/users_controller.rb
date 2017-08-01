class UsersController < ApplicationController
  def show
    @user = current_user
    if !current_user.nil?
       @user = current_user
       @item = Item.new
       @items = @user.items
     else
  end
end
