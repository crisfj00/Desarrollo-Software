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


		def copia(eL, eV, loc, min)
			obj= Encuentro.new(loc, min)
			obj.equipoLocal= eL.clone
			obj.equipoVisitante= eV.clone
			return obj
		end

		
		def clone()
			return copia(@equipoLocal, @equipoVisitante, @localizacion, @minutos)
		end

		
		def initialize(loc, min)
			@equipoLocal= []
			@equipoVisitante= []
			@localizacion= loc
			@minutos= min

		end

		
		def comenzarEncuentro

		end

		#abstract_method :comenzarEncuentro

	end
end
