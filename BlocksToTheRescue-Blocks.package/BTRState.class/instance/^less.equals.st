comparing
<= aBTRState

	^ (self isStartState or: [self name <= aBTRState name])
		and: [aBTRState isStartState not]