class ApplicationController < ActionController::Base
  add_breadcrumb "home", :root_path
  add_breadcrumb "my", :my_path

  def index
    add_breadcrumb "index", index_path
  end
end
