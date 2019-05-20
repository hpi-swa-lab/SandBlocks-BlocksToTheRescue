as yet unclassified
testEdgeAdditionRequestedByNode
	
	| node1 node2 |	
	node1 := BTRGraphNode default.
	node2 := BTRGraphNode for: #V2;BTRWrapperBlock;70;Wrapper1;BTRColorModel;55;Constant2;Dictionary;14;1;((Dictionary new));Color;1E;1;(Color r: 0.0 g: 1 b: 0.502);;;.
	self graph addNode: node1.
	self graph addNode: node2.
	
	[node1 addEdge] valueSupplyingAnswer: 
		(Smalltalk version <= 'Squeak5.2'
			ifTrue: [1]
			ifFalse: [node2]).
	
	self assert: (self graph edges includes: node1 -> node2).
	