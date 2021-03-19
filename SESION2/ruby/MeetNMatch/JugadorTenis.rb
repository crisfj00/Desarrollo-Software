require "Jugador"

module MeetNMatch
	class JugadorTenis < Jugador

		attr_accessor :manoDominante, :envergadura

		def clone()
			return JugadorTenis.new(@manoDominante,@envergadura)
		end

		
		def initialize(dom,env)
			super("PrototipoTenis",0,"00000000A")
			@manoDominante=dom
			@envergadura=env
		end

		def jugar(min)
			super(min)
			puts "Jugador de Tenis " + @nombre + " sale a la pista\n"
		end
    
    def finalizar()
			puts "Jugador de Tenis " + @nombre + " termina de jugar\n"
    end
	end
end
