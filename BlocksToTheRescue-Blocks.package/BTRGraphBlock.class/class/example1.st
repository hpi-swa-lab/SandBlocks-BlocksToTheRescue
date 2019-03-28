as yet unclassified
example1

	| graph node1 node2 node3 node4 |
	node1 := BTRGraphBlockNode new code: '{foo. bar}'.
	node2 := BTRGraphBlockNode new code: '{(self argumentAt: 1) * 2}'.
	node3 := BTRGraphBlockNode new code: '{''Old '', self arguments first}'.
	node4 := BTRGraphBlockNode new code: '{self arguments first asString, '' piles of '', self arguments second}'.
	graph := BTRGraphBlock new.
	graph nodes: {node2. node3. node4. node1}.
	graph edges: {node1 -> node2. node1 -> node3. node2 -> node4. node3 -> node4}.
	^ graph