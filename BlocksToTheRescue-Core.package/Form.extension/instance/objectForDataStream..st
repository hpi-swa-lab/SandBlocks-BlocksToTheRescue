*BlocksToTheRescue-Core
objectForDataStream: aReferenceStream

	"Only start compressing if we are actually a Form, not a subclass, which might have extra information. And only compress if size is large enough."
	(self class == Form and: [self bits size > 5000]) 
		ifTrue: [^ self as: BTRCompressedForm].
	^ super objectForDataStream: aReferenceStream