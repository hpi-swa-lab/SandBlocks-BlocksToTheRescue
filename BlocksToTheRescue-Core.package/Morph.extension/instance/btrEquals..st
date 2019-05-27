*BlocksToTheRescue-Core
btrEquals: anotherMorph

	^ (self bounds = anotherMorph bounds
 	and: [self submorphs size = anotherMorph submorphs size]
	and: [self color = anotherMorph color]
	and: [self borderWidth = anotherMorph borderWidth])
	and: [self borderColor = anotherMorph borderColor]
	and: [
		self submorphs 
			with: anotherMorph submorphs 
 			do: [:first :second | (first btrEquals: second) ifFalse: [^ false]].
		true]