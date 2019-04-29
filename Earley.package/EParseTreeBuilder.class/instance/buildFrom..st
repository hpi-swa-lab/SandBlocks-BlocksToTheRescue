as yet unclassified
buildFrom: anENode

	^ anENode 
		children: (self buildChildrenFor: anENode);
		yourself