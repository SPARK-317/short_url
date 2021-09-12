class Long < ApplicationRecord
  has_many :shorts

  validates :address, presence: :true
  validates_format_of :address, with: /\A((https:\/\/(www\.)?\w+)|(http:\/\/(www\.)?\w+)|((www\.)?\w+))((\.\w{2,3}){1,2})\z/
end
