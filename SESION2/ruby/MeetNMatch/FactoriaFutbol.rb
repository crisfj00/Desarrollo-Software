require 'JugadorFutbol'
require 'EncuentroFutbol'
require 'Encuentro'
require 'Factoria'

module MeetNMatch
	class FactoriaFutbol < Factoria
		@PrototipoJugadorFutbol
		@PrototipoEncuentroFutbol

		def crearPartido(local)
			encuentro=@PrototipoEncuentroFutbol.clone
			
			encuentro.localizacion=local
			
			encuentro.apuntarseLocal(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseLocal(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseLocal(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseLocal(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseLocal(@PrototipoJugadorFutbol.clone)

			encuentro.apuntarseVisitante(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseVisitante(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseVisitante(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseVisitante(@PrototipoJugadorFutbol.clone)
			encuentro.apuntarseVisitante(@PrototipoJugadorFutbol.clone)

			return encuentro
		end

		def initialize
			@PrototipoEncuentroFutbol=EncuentroFutbol.new("LocalizacionPrototipo","Cesped")
			@PrototipoJugadorFutbol=JugadorFutbol.new(0,"PORTERO")
		end
				
	end
end
