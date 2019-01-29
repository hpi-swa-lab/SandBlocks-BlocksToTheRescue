as yet unclassified
update: aspect

	super update: aspect.

	aspect = #contents
		ifTrue: [

			self updateMethodMorph].