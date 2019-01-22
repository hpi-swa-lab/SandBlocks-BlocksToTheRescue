as yet unclassified
executeStartBlocks

	| promises |
	promises := OrderedCollection new.
	
	self firstBlocks do: [:each | | promise |
		promise := Promise new.
		promise whenResolved: self resolveBlock.		
		self addNewThreadWithExecutee: each onPromise: promise].