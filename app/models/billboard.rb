class Billboard < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :artists, through: :songs
  belongs_to :user
end
