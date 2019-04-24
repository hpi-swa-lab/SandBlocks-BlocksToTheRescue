as yet unclassified
asString

	^ self transition name, String tab, 
		self transition targetStateName, String tab, 
		(self transition action ifNil: [''] ifNotNil: [:action | action storeString])