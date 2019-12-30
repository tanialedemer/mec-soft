class Proveedor < ApplicationRecord
	def nombre_ruc
		"Proveedor:#{nombre}, Ruc:#{ruc}"
	end
end
