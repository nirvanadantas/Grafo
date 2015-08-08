require './TadGrafo'
#require './Vertice'
require 'test/unit'

class TestGrafo < Test::Unit::TestCase
	def test_Vertice
		g = Grafo.new
		v = g.inserirVertice(:v1, 1)
		assert_equal(1, g.vertices[0].valor)
	end

	def test_Aresta
		g = Grafo.new
		v = g.inserirVertice(:v1, 1)
		v2 = g.inserirVertice(:v2, 20)
		g.inserirAresta(v, v2, 20)
		assert_equal(1, g.arestas[0].v1.valor)
	end

	def test_remove_Aresta
		g = Grafo.new
		v = g.inserirVertice(:v1, 1)
		v2 = g.inserirVertice(:v2, 20)
		a = g.inserirAresta(v, v2, 20)
		assert_equal(20,  g.removeAresta(a))
		assert_equal(nil, g.arestas[0])
	end

	def test_remove_vertice
		g = Grafo.new
		v = g.inserirVertice(:v1, 1)
		#vertice isolado
		assert_equal(1, g.removeVertice(v))
		assert_equal(nil, g.vertices[0])
		#vertice com aresta
		v = g.inserirVertice(:v1, 1)
		v2 = g.inserirVertice(:v2, 10)
		a = g.inserirAresta(v, v2, 20)
		g.removeVertice(v)
		assert_equal(nil, g.arestas[0])
		#vertice ligado a mais de uma aresta
		v = g.inserirVertice(:v1, 1)
		v3 = g.inserirVertice(:v3, 100)
		a2 = g.inserirAresta(v, v3, 30)
		g.removeVertice(v)
		assert_equal(nil, g.arestas[0])
=begin
=end
		#vertice com arestas
	end

=begin


		puts g
		assert_equal(20, g.vertices[0].valor)
		assert_equal(nil, g.arestas[0])
=end
end

	