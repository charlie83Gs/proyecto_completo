class Muestra < ApplicationRecord
	belongs_to :muestreo
	has_one :empleado
	has_one :operacion
	has_one :tarea
end
