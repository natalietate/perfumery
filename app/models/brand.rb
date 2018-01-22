class Brand < ApplicationRecord
  has_many :perfumes, dependent: :destroy
end
