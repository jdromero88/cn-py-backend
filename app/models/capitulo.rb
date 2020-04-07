class Capitulo < ApplicationRecord
  belongs_to :titulo
  has_many :secciones, dependent: :destroy
end
