class Short < ApplicationRecord
  belongs_to :long

  validates :address, presence: true
end
