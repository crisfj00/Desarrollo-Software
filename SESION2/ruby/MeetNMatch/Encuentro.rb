require 'Jugador'

module MeetNMatch
	
	class Encuentro

		attr_accessor :equipoLocal, :equipoVisitante, :minutos, :localizacion
		
		def apuntarseLocal(jug)
			@equipoLocal << jug
		end

		
		def apuntarseVisitante(jug)
			@equipoVisitante << jug
		end


		def clone()
		end

		
		def initialize(loc, min)
			@equipoLocal= []
			@equipoVisitante= []
			@localizacion= loc
			@minutos= min

		end

		
		def comenzarEncuentro

		end


	end
end
