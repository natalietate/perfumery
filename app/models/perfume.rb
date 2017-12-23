class Perfume < ApplicationRecord
  belongs_to :brand, dependent: :destroy
end
