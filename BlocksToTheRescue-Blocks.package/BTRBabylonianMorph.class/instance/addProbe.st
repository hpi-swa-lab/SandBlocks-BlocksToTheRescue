as yet unclassified
addProbe

	self textMorph selection ~= ''
		ifTrue: [ | probe |
			probe := BTRProbe for: self textMorph selection.
			self probes add: probe.
			probe babylonianMorph: self.
			self textMorph editor 
								replaceSelectionWith: (BTRBlockAttribute asTextFrom: probe)]
	
	