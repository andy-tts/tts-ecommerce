class CartController < ApplicationController
  def add_to_cart
  	line_item = LineItem.create(
  		product_id: params[:product_id],
  		quantity: params[:quantity]
  	)
  	line_item.update(line_item_total: (line_item.quantity * line_item.product.price))

  	redirect_back(fallback_location: root_path)
  end

  def view_order
  	@line_items = LineItem.all
  end

  def checkout
  	line_items = LineItem.all
  	@order = Order.create(
  		user_id: current_user.id,
  		line_items: line_items,
  		subtotal: 0
  	)
  	line_items.each do |line_item|

  		if line_item.quantity.present?
	  		product = line_item.product
	  		new_quantity = product.quantity - line_item.quantity
	  		product.update(quantity: new_quantity)
  		end
  		@order.subtotal += line_item.line_item_total
  	end
  	@order.save
  end
end
