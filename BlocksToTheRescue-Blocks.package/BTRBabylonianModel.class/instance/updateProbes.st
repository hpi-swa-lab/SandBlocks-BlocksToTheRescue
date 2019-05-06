as yet unclassified
updateProbes

	self view 
		ifNotNilDo: [:view | | editor oldSelection |  
			editor := self view textMorph editor.
			oldSelection :=  editor selectionInterval.
			editor selectInvisiblyFrom: 1 to: self view text size.
			editor evaluateSelection.
			editor selectInterval: oldSelection]
	