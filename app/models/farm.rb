class Farm < ApplicationRecord
  belongs_to :user

  def to_s
    "#{name}"
  end
end
