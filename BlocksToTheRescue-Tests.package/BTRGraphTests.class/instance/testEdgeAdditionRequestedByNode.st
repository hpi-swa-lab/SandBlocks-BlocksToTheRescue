as yet unclassified
testEdgeAdditionRequestedByNode
	
	| node1 node2 |	
	node1 := BTRGraphNode default.
	node2 := BTRGraphNode for: #V2;BTRWrapperBlock;7D;Wrapper1;BTRColorModel;62;Constant2;UndefinedObject;5;1;nil;UndefinedObject;5;1;nil;Color;1E;1;(Color r: 0.0 g: 1 b: 0.502);;;.
	self graph addNode: node1.
	self graph addNode: node2.
	[node1 addEdge] 
		on: ProvideAnswerNotification
		do: [:e | e resume: 1].
	
	self assert: (self graph edges includes: node1 -> node2).
	