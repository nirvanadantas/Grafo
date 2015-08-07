require "./Vertice"

class Aresta 
	attr_accessor :chave, :v1, :v2, :valor

	@@cont = 0
	def initialize(chave='a' , v1, v2, valor)
		@@cont +=1
		@v1, @v2, @valor = v1, v2, valor
		@chave = "#{chave}#{@@cont}".to_sym
	end

	def to_s
		"Aresta @valor = #{@valor}, @chave = #{@chave}, @v1 = #{@v1}, @v2 = #{v2}"
	end
end