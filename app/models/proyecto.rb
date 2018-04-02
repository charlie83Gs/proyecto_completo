class Proyecto < ApplicationRecord
	has_many :muestreos
	has_many :empleados
end
