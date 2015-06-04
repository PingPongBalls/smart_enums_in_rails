class Order < ActiveRecord::Base
  STATUSES = [ORDERED="ordered", PAYED="payed", SHIPPED="shipped", DELIVERED="delivered"]
  
  validates :status, inclusions: { in: :STATUSES }
  
  def update_status
    self.status = Order::PAYED
  end
end
