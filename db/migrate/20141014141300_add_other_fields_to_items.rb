class AddOtherFieldsToItems < ActiveRecord::Migration
  def change
    add_column :items, :price, :decimal,:default => 0.0, :precision => 10, :scale => 2 
    add_column :items, :total, :decimal, :default => 0.0,:precision => 10, :scale => 2 
    add_column :items, :discount, :decimal, :default => 0.0,:precision => 10, :scale => 2 
    add_column :items, :amount, :decimal, :default => 0.0,:precision => 10, :scale => 2 
  end
end
