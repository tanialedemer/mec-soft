class Category < ApplicationRecord
	validates :descripcion, presence: true
end
