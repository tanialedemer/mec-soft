class Proveedor < ApplicationRecord
	validates :ruc, presence: true, uniqueness: true
	validates :nombre, presence: true

	def nombre_ruc
		"Proveedor:#{nombre}, Ruc:#{ruc}"
	end
end
