require 'Encuentro'

module MeetNMatch

	class EncuentroTenis < Encuentro

		attr_accessor :alturaRed, :tipoEncuentro

		def clone()    
      obj= EncuentroTenis.new(1)
			obj.equipoLocal= @equipoLocal.clone
			obj.equipoVisitante= @equipoVisitante.clone
      return obj
     end

		def comenzarEncuentro
			puts "Va a comenzar un encuentro de " + @tipoEncuentro + " en " + @localizacion +"\n- La altura de la red es: " + @alturaRed.to_s + "m"
			
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

		
		def initialize(alturaR)
			super("LocalizacionPrototipo",120)
			@alturaRed= alturaR
			@tipoEncuentro= "tenis"
      @minutos=120
			
		end

		
	end
end
