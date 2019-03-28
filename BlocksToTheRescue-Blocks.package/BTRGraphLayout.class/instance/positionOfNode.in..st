layout
positionOfNode: aBTRNodeMorph in: layers

	layers keysAndValuesDo: [:x :nodes | (nodes includes: aBTRNodeMorph node) 
		ifTrue: [^ x @ (nodes indexOf: aBTRNodeMorph node)]].
	^ 0 @ 0
		
