# coding: utf-8
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

	def removeAresta(a)	
		#remove um objeto aresta
		for i in 0...@arestas.size do
			p @arestas[i]
			if  a.chave == @arestas[i].chave  then
				custo = @arestas[i].valor
				@arestas[i] = nil
				@arestas.compact!
			end
		end
		custo
	end

	def removeArestas(a)
		#remove todas as arestas de chave a
		for i in 0...@arestas.size do
			if  (a==@arestas[i].v1.chave || a==@arestas[i].v2.chave ) then
				@arestas[i] = nil
				@arestas.compact!
			end
		end
		
	end

	def removeVertice(vertice)
		for i in 0...@vertices.size do
			if vertice.chave == @vertices[i].chave then
				valor = @vertices[i].valor
				removeArestas(@vertices[i].chave)
				@vertices[i] = nil
				@vertices.compact!
			end
		end
		valor
	end

	def to_s
		puts "Grafo: "
		print "Vértices: {"
		for i in 0...@vertices.size do 
			print "#{@vertices[i]}; "
		end
		puts "}"
		puts "Arestas: {"
		for i in 0...@arestas.size do
			print "#{@arestas[i]}; "
		end
		puts"}"
	end
end