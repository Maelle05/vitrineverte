class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def homeConsumer
  end

  def contact
  end

  def legalnotice
  end

  def homeProductor
  end

  def dashboardProductor
  end
end
