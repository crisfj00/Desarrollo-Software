require "Jugador"

module MeetNMatch
	
	class JugadorFutbol < Jugador

		attr_accessor :dorsal, :posicion
		def clone()
			return JugadorFutbol.new(@dorsal,@posicion)
		end

		
		def initialize(dor,pos)
			super("PrototipoFutbol",0,"00000000A");
			@dorsal=dor
			@posicion=pos
		end

		def jugar(min)
			super(min)
			puts "Jugador de Futbol " + @nombre + " sale al campo ("+@dorsal.to_s+")\n"
		end
    
    def finalizar()
      			puts "Jugador de Futbol " + @nombre + " termina de jugar\n"

    end

	end
end
