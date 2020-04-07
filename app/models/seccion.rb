class Seccion < ApplicationRecord
  belongs_to :capitulo
  has_many :articulos, dependent: :destroy
end
