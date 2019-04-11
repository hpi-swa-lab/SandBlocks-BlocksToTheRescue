special constructors
storeAssociation: anAssociation

	| stream |
	stream := BTRSmartStream on: self.	
	stream store: anAssociation key.
	stream nextPutAll: ' -> '.
	stream store: anAssociation value.
	^ stream contents