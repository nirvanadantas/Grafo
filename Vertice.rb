class Vertice
	attr_accessor :chave, :valor

	@@cont = 0
	def initialize(chave='v', valor)
		@@cont += 1
		@valor =  valor
		@chave = "#{chave}#{@@cont}".to_sym
	end
	
	def to_s
		"Vertice: @chave = #{@chave}, @valor = #{@valor}"		
	end	
end