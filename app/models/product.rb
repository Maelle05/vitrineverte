class Product < ApplicationRecord
  belongs_to :farm

  def to_s
    "#{name}"
  end
end
