as yet unclassified
testAddAndRemoveNode

	| node |
	node := BTRGraphNode default.
	
	self graph addNode: node.
	self assert: (self graph nodes includes: node). 
	
	self graph removeNode: node.
	self deny: (self graph nodes includes: node).
	
	