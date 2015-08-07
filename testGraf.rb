require './TadGrafo'
#require './Vertice'
require 'test/unit'

class TestGrafo < Test::Unit::TestCase
	def test_Vertice
		g = Grafo.new
		v = g.inserirVertice(:v1, 1)
		p g
		assert_equal(1, g.vertices[0].valor)
	end

	def test_Aresta
		g = Grafo.new
		v = g.inserirVertice(:v1, 1)
		v2 = g.inserirVertice(:v2, 20)
		g.inserirAresta(v, v2, 20)
		assert_equal(20, g.arestas[0].valor)
		puts g.arestas[0].v1.valor
		assert_equal(1, g.arestas[0].v1.valor)
		p g
	end

end

