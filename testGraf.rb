require './TadGrafo'
require './Vertice'
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
	end

	def test_vertices
		g = Grafo.new
		vertices = []
		v = g.inserirVertice(:v1, 1)
		v2 = g.inserirVertice 2
		d = g.inserirVertice 3
		vertices.push v, v2, d
		assert_equal(vertices, g.vertices)
	end
	def test_arestas
		g = Grafo.new
		v = g.inserirVertice(:v1, 1)
		v2 = g.inserirVertice(:v2, 20)
		v3 = g.inserirVertice 40
		arestas = []
		a = g.inserirAresta(v, v2, 20)
		b = g.inserirAresta v, v, 30
		c = g.inserirAresta v2, v3, 9
		f = g.inserirAresta v, v3, 1
		arestas.push a, b, c, f
		assert_equal(arestas, g.arestas)
	end

	def test_substituir
		g = Grafo.new
		v = g.inserirVertice 2
		g.substituir v, 1
		assert_equal(1, g.vertices[0].valor)
		a = g.inserirAresta v, v, 10
		g.substituir a, 1
		assert_equal(1, g.arestas[0].valor)
	end

=begin
=end
	def test_ehadjacente
		g = Grafo.new
		#se forem adjacentes retorna true
		v = g.inserirVertice 2
		v2  = g.inserirVertice 3
		g.inserirAresta v, v2, 10
		assert_equal(true, g.ehadjacente(v, v2))
		v3 = g.inserirVertice 1
		assert_equal(false, g.ehadjacente(v, v3))
		#se houverem mas n for adjacentes retorna false
	end


end

	