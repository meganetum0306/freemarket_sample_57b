class UsersController < ApplicationController


  def index
  end

  def edit
  end

  def show
  end

  def logout
  end

  def item_management
    @items = current_user.items.order("created_at DESC")
  end

  def card
    
  end
end
