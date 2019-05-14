layout
layersOf: aBTRGraphEditorMorph

	| depths layers queue |
	depths := IdentityDictionary new.
	queue := aBTRGraphEditorMorph graph startNodes copy.
	queue do: [:each | depths at: each put: 1].
	[queue isEmpty] whileFalse: [| current |
		current := queue removeFirst.
		(aBTRGraphEditorMorph graph outgoing: current) do: [:each |depths 
			at: each value 
			put: ((depths at: each value ifAbsent: [0]) max: (depths at: each key) + 1).
		queue addLast: each value]].
	layers := OrderedCollection new.
	aBTRGraphEditorMorph graph nodes do: [:each |
		(layers at: (depths at: each) ifAbsentPut: [OrderedCollection new]) add: each].
	^ layers
