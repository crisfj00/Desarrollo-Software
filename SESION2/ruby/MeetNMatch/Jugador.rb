require "Encuentro"

module MeetNMatch
	class Jugador

	    attr_accessor :nombre,:edad,:dni,:minutos

		def initialize(n,e,d)
			@nombre=n
			@edad=e
			@dni=d
		end

		
		def jugar(min)
			@minutos=min
		end

		
		def clone()
		end

		#abstract_method :clone

	end
end
