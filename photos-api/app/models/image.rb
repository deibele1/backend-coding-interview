class Image < ApplicationRecord
  belongs_to :photographer
  has_one :src
end
