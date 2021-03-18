require 'JugadorTenis'
require 'EncuentroTenis'
require 'Encuentro'
require 'Factoria'

module MeetNMatch
	
	class FactoriaTenis < Factoria

		@PrototipoJugadorTenis
		@PrototipoEncuentroTenis

		def crearPartido(local)
			encuentro=@PrototipoEncuentroTenis.clone
			
			encuentro.localizacion=local
			
			encuentro.apuntarseLocal(@PrototipoJugadorTenis.clone)

			encuentro.apuntarseVisitante(@PrototipoJugadorTenis.clone)

			return encuentro		
		end

		def initialize
			@PrototipoEncuentroTenis=EncuentroTenis.new(1)
			@PrototipoJugadorTenis=JugadorTenis.new("Diestro",1)
		end
	end
end
