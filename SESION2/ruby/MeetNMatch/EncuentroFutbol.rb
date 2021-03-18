require 'Encuentro'

module MeetNMatch
	
	class EncuentroFutbol < Encuentro

		attr_accessor :tipoSuelo, :tipoEncuentro
		
		
		def clone()
			obj= super()
			#obj.tipoSuelo= @tipoSuelo
			#obj.tipoEncuentro= "futbol"
			return obj
		end

		def comenzarEncuentro
			puts "Va a comenzar un encuentro de " + @tipoEncuntro + "\n- El tipo de suelo del campo es: " + @tipoSuelo

			@equipoLocal.each do |jug|
				jug.jugar(@minutos)
			  end

			@equipoVisitante.each do |jug|
				jug.jugar(@minutos)
			end

		end

		
		def initialize(loc, tipoS)
			super(loc,90)
			@tipoSuelo= tipoS
			@tipoEncuentro= "futbol"
		end

		

	end
end
