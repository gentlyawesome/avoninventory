class ItemsController < ApplicationController
  respond_to :html, :xml, :js
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = current_user.items
    @item = Item.new
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @items = current_user.items
    @item = Item.new
    respond_with(@item)
  end

  def edit
    @items = current_user.items
  end

  def create
    @item = Item.new(item_params)
    flash[:notice] = 'Item was successfully created.' if @item.save
    respond_with(@item, :location => items_url)
  end

  def update
    flash[:notice] = 'Item was successfully updated.' if @item.update(item_params)
    respond_with(@item, :location => items_url)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:price,:total, :discount, :amount, :description, :quantity, :user_id)
    end
end
