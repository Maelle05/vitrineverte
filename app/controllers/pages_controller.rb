class PagesController < ApplicationController
  def home
  end

  def homeConsumer
  end

  def myCommand
    @product_in_orders = ProductInOrder.all
    @orders = Order.all
  end

  def contact
  end

  def legalnotice
  end
end
