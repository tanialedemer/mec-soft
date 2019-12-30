class Client < ApplicationRecord
	has_many :vehiculos, dependent: :destroy
	accepts_nested_attributes_for :vehiculos, allow_destroy: true

def nombre_apellido_ruc  
    "Cliente: #{nombre}, #{apellido} Ruc: #{ruc}"
end
end
