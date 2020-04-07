class Parte < ApplicationRecord
  has_many :titulos, dependent: :destroy
end
