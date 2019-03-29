layout
layersOf: aBTRGraphEditorMorph

	| depths queue |
	depths := IdentityDictionary new.
	queue := aBTRGraphEditorMorph graph startNodes copy.
	queue do: [:each | depths at: each put: 1].
	[queue isEmpty] whileFalse: [| current |
		current := queue removeFirst.
		(aBTRGraphEditorMorph graph outgoing: current) do: [:each |depths 
			at: each value 
			put: ((depths at: each value ifAbsent: [0]) max: (depths at: each key) + 1).
		queue addLast: each value]].
	^ depths keys groupBy: [:each | depths at: each]
