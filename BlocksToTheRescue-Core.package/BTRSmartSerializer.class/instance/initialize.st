as yet unclassified
initialize

	super initialize.
	self 
		referenceDictionary: IdentityDictionary new;
		constructions: Dictionary new;
		toResolve: OrderedCollection new.