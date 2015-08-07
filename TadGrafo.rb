require "./Vertice"
require "./Aresta"
class Grafo
	attr_accessor :vertices, :arestas

	def initialize
		@vertices, @arestas = [], []
	end

	def inserirVertice(chave, valor)
		v = Vertice.new(chave, valor)
		@vertices << v
		v
	end


	def inserirAresta(v, v1, valor)
		a = Aresta.new(v, v1, valor)
		@arestas << a
		a
	end
end