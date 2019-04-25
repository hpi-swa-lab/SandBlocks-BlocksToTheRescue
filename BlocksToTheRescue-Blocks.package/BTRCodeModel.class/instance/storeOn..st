printing
storeOn: aStream

	| dependents |
	dependents := self myDependents.
	self breakDependents.
	super storeOn: aStream.
	self myDependents: dependents.