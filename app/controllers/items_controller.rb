class ItemsController < ApplicationController

def show
	@item = Item.find(params[:id])
	
end

def index
	@items = Item.all
end

def new
	@item = Item.new
	@item.build_stock
end


def create
  @item = Item.new(item_params)

  if @item.save
	flash[:notice] = "Item was created successfully."
	redirect_to @item
  else
	render 'new'
  end
end
def item_params
  params.require(:item).permit(
				:itemname, :desc, :image, :user_id,
				stock_attributes: [:price, :quantity]).merge(user:current_user)
end
end
