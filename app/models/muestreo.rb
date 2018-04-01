class Muestreo < ApplicationRecord
	belongs_to :proyecto
	has_many :muestras
end
