as yet unclassified
generateMethodOfClass: aClass trailer: aTrailer from: aMethodNode

	"We have to make sure the method only consists of one Return, which returns the model we want to convert to (The BTRBlockNode)"
	self methodNode: aMethodNode.
	^ (self statements size = 1
		and: [(self returnNode isKindOf: ReturnNode)
		and: [self btrBlockNode isKindOf: BTRBlockNode]])
			ifTrue: [
				self btrBlockNode key
					methodClass: aClass;
					yourself]
			ifFalse: [self defaultEncoder generateMethodOfClass: aClass trailer: aTrailer from: aMethodNode]