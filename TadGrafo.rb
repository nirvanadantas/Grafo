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
		for i in 0..@arestas.size-1 do
			if  a.chave == @arestas[i].chave  then
				custo = @arestas[i].valor
				@arestas[i] = nil
				@arestas.compact!
			end
		end
		custo
	end
	
	def removeVertice(v)
		for i in 0..@vertices.size-1 do
			if v == @vertices[i] then
				valor = @vertices[i].valor
				removeArestas(@vertices[i].chave)
				@vertices[i]= nil
			end
		end
		valor
	end

	def removeArestas(a)
		#remove todas as arestas de chave a
		for i in 0...@arestas.size do
			if  (a==@arestas[i].v1.chave || a==@arestas[i].v2.chave ) then
				@arestas[i] = nil
			end
		end
		@arestas.compact!
		nil
	end


	def to_s
		puts "Grafo: "
		print "Vértices: {"
		for i in 0...@vertices.size do 
			print "#{@vertices[i]}; "
		end
		print "}"
		puts "Arestas: {"
		for i in 0...@arestas.size do
			print "#{@arestas[i]}; "
		end
		puts"}"
	end
end