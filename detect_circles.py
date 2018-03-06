#!/usr/bin/env python
import networkx
import sys

graph = networkx.DiGraph(networkx.drawing.nx_pydot.read_dot((sys.argv[1])))
cycles = sorted(tuple(cycle) for cycle in networkx.simple_cycles(graph))


print ("Found %s cycles:" % len(cycles))

for cycle in cycles:
    print (cycle)
