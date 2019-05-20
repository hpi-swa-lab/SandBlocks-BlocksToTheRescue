as yet unclassified
testAddAndRemoveEdge

	| node1 node2 edge |
	node1 := BTRGraphNode default.
	node2 := BTRGraphNode default.
	self graph addNode: node1.
	self graph addNode: node2.
	edge := node1 -> node2.
	
	self graph addEdge: edge.		
	self assert: (self graph edges includes: edge). 
	
	self graph removeEdge: edge.
	self deny: (self graph edges includes: edge).