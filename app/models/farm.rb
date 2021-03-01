class Farm < ApplicationRecord
  belongs_to :user
  has_many :products

  def to_s
    "#{name}"
  end
end
