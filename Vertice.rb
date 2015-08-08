class Vertice
	attr_accessor :chave, :valor

	def initialize(chave, valor)
		@chave, @valor = chave.to_sym, valor		
	end
	
	def to_s
		"Vertice: @chave = #{@chave}, @valor = #{@valor}"		
	end	
end