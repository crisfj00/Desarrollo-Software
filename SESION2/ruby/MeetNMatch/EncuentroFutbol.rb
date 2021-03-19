require 'Encuentro'

module MeetNMatch
	
	class EncuentroFutbol < Encuentro

		attr_accessor :tipoSuelo, :tipoEncuentro
		
		
		def clone()     
      obj= EncuentroFutbol.new(@localizacion,  @tipoSuelo)
			obj.equipoLocal= @equipoLocal.clone
			obj.equipoVisitante= @equipoVisitante.clone
			return obj
		end

		def comenzarEncuentro
			puts "Va a comenzar un encuentro de " + @tipoEncuentro + " en " + @localizacion + "\n- El tipo de suelo del campo es: " + @tipoSuelo

			@equipoLocal.each do |jug|
				jug.jugar(@minutos)
			  end

			@equipoVisitante.each do |jug|
				jug.jugar(@minutos)
			end
      
      sleep(@minutos/10)
      
			@equipoLocal.each do |jug|
				jug.finalizar
			  end

			@equipoVisitante.each do |jug|
				jug.finalizar
			end

			puts "Finaliza encuentro de " + @tipoEncuentro

		end

		
		def initialize(loc, tipoS)
			super(loc,90)
			@tipoSuelo= tipoS
			@tipoEncuentro= "futbol"
		end

		

	end
end
