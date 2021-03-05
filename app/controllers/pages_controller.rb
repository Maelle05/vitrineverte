class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
    @farms = Farm.all
    render layout: 'minimal'
  end

  def my_orders
    @farms = Farm.all
    @orders = Order.all

    add_breadcrumb "Accueil", root_path
    add_breadcrumb "Mes commandes", pages_my_orders_path
  end

  def legalnotice
  end
end
