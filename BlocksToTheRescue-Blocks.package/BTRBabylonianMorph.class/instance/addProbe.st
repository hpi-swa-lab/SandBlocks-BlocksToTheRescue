as yet unclassified
addProbe

	self textMorph selection ~= ''
		ifTrue: [ | probe |
			probe := BTRProbe for: self textMorph selection.
			self textMorph editor 
								replaceSelectionWith: (BTRBlockAttribute asTextFrom: probe)]
	
	