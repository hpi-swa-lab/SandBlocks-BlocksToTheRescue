as yet unclassified
updateMethodMorph

	self mode = #showTool
		ifTrue: [
			self toolMorph removeAllMorphs.
			self toolMorph addMorph: self methodMorph.
			
			]
