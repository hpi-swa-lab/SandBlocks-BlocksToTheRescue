instance creation
for: aBTRGraphNode

	^ self basicNew
		node: aBTRGraphNode;
		in: [:instance | aBTRGraphNode addDependent: instance];
		initialize;
		yourself