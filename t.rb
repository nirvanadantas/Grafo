require './TadGrafo'

g = Grafo.new
v = g.inserirVertice(:v1, 1)
v2 = g.inserirVertice(:v2, 20)
a = g.inserirAresta(v, v2, 20)
puts g.removeVertice(v)



=begin
g = Grafo.new
custo_A = g.removeAresta(a)
v = g.inserirVertice(:v1, 1)
p v
v2 = g.inserirVertice(:v2, 10)
g.inserirAresta(v, v2, 20)
p g.arestas[0].v2
p g.arestas[0].v1
puts g.arestas[0]
p v
p v2
=end