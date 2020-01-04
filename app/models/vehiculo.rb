class Vehiculo < ApplicationRecord
  belongs_to :client

  validates :modelo, presence: true
  validates :matricula, presence: true, uniqueness: true
  validates :marca, presence: true
  validates :km, presence: true
  validates :chasis, presence: true, uniqueness: true

end
