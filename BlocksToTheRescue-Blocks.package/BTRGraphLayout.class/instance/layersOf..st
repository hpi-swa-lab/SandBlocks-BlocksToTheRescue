layout
layersOf: aBTRGraphEditorMorph

	| depths  |
	depths := Dictionary new.
	aBTRGraphEditorMorph graph startNodes do: [:each | depths at: each put: 1].
	aBTRGraphEditorMorph graph edges do: [:each | depths 
		at: each value 
		put: ((depths at: each value ifAbsent: [0]) max: (depths at: each key) + 1)].
	^ depths keys groupBy: [:each | depths at: each]
