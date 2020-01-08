class Vehiculo < ApplicationRecord
  belongs_to :client

  validates :modelo, presence: true
  validates :matricula, presence: true, uniqueness: true
  validates :marca, presence: true
  validates :km, presence: true
  validates :chasis, presence: true, uniqueness: true

def vehiculo
	"Modelo: #{modelo}, Marca: #{marca}, Matrícula: #{matricula}, Año: #{year_fab}"
end
end
