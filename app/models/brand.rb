class Brand < ApplicationRecord
  has_many :items, dependent: :destroy

end
