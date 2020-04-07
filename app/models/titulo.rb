class Titulo < ApplicationRecord
  belongs_to :parte
  has_many :capitulos, dependent: :destroy
end
