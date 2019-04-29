as yet unclassified
testNodeRemovalRequestedByNode
	
	| node |	
	node := BTRGraphNode default.
	self graph addNode: node.
	node delete.
	
	self deny: (self graph nodes includes: node).
	