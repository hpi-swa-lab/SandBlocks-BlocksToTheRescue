*BlocksToTheRescue-Core
btrEquals: anObject
	"layouts and stuff break everything so do not check them"
	^ (self class = anObject class
	and: [self submorphs size = anObject submorphs size]
	and: [self submorphs with: anObject submorphs do: [:first :second | (first btrEquals: second) ifFalse: [^ false]]. true.]
	and: [self color = anObject color]
	and: [self borderWidth = anObject borderWidth])
	and: [self borderColor = anObject borderColor]