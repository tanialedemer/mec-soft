class RepuestoServicio < ApplicationRecord
  belongs_to :category

  validates :codigo, presence: true, uniqueness: true
  validates :descripcion, presence: true
end
