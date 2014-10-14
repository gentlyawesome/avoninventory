class Item < ActiveRecord::Base
  belongs_to :user
  validates :description, :presence => true
  validates :quantity, :presence => true
end
