class OrdersController < ApplicationController
    def create
       cart.each do |sneaker|
            subtotal = sneaker.price * session[:shopping_cart].count(sneaker.id)
            pst = subtotal * current_customer.province.provincial
            gst = subtotal * current_customer.province.goods_and_services
            hst = subtotal * current_customer.province.harmonized

            @order = Order.create(customer_id: current_customer.id,
                                  name: sneaker.name,
                                  price: sneaker.price,
                                  quantity: session[:shopping_cart].count(sneaker.id),
                                  PST: pst,
                                  GST: gst,
                                  HST: hst,
                                  total: subtotal + pst + gst + hst,
                                  address: current_customer.province.name,
                                  status: "Pending"
                                )
       end

       if customer_signed_in?
            if @order.save
                cart.each do |sneaker|
                    session[:shopping_cart].delete(sneaker.id)
                end

                redirect_to success_path
            else
                redirect_to fail_path
            end
       end
    end
end
