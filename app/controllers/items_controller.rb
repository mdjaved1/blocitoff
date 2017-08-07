class ItemsController < ApplicationController
  def new 
    @item = Item.new
  end
  
  def create
    @item = current_user.items.new(item_params)

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to root_path
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render :new
    end
  end
  
  def destroy 
    @item = Item.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "Item was completed"
    else
      flash[:error] = "There was an error saving the item. Please try again."
    end
     redirect_to root_path
  end  
  
  private 
  
  def item_params 
    params.require(:item).permit(:name)
  end
end
