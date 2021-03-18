require 'Encuentro'

module MeetNMatch

	class EncuentroTenis < Encuentro

		attr_accessor :alturaRed, :tipoEncuentro

		def clone()
			obj= super()
			#obj.alturaRed= @alturaRed
			#obj.tipoEncuentro= "tenis"
			return obj
		end

		def comenzarEncuentro
			puts "Va a comenzar un encuentro de " + @tipoEncuntro + "\n- La altura de la red es: " + @alturaRed 
			
			@equipoLocal.each do |jug|
				jug.jugar(@minutos)
			  end

			@equipoVisitante.each do |jug|
				jug.jugar(@minutos)
			end

		end

		
		def initialize(alturaR)
			super("LocalizacionPrototipo",120)
			@alturaRed= alturaR
			@tipoEncuentro= "tenis"
      @minutos=120
			
		end

		
	end
end
