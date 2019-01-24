as yet unclassified
adjustInlineBlocks
	
	self submorphsDo: [ :each | each abandon].
	self text runs do:
		[ :textConfig | 
		textConfig
			detect: [:each | each isKindOf: IMTextAttribute]
			ifFound: [:attribute | 
				self addMorph: (attribute inlineMorph)]
			ifNone: []].