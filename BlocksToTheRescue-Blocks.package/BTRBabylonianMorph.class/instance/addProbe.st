as yet unclassified
addProbe

	self textMorph selection ~= ''
		ifTrue: [ | probe |
			probe := BTRProbe for: self textMorph selection.
			self probes add: probe.
			probe addDependent: self.
			self textMorph editor 
								replaceSelectionWith: (BTRBlockAttribute asTextFrom: probe)]
	
	