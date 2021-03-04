class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
    @farms = Farm.all
    render layout: 'minimal'
  end

  def legalnotice
  end
end
