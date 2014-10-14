class Item < ActiveRecord::Base
  belongs_to :user
  validates :description, :presence => true
  validates :quantity, :presence => true

  before_save :calculate_amount

  private
  def calculate_amount
    self.total = self.quantity * self.price
    self.discount = self.price * 0.25 * self.quantity
    self.amount = self.total - self.discount    
  end
end
