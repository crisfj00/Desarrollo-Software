require "FactoriaFutbol"
require "Encuentro"
require "Jugador"
require "FactoriaTenis"


module MeetNMatch


	class MAIN
		factFutbol= FactoriaFutbol.new
		enc= factFutbol.crearPartido("Benito Villamarin")
		enc.comenzarEncuentro

		factTenis= FactoriaTenis.new
		enc= factTenis.crearPartido("Pista de tenis Albolote")
		enc.comenzarEncuentro

	end
end

