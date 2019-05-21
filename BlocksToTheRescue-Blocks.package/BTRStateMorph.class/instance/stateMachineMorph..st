accessing
stateMachineMorph: aBTRStateMachineMorph
	self removeDependent: aBTRStateMachineMorph.
	stateMachineMorph := aBTRStateMachineMorph.
	self addDependent: aBTRStateMachineMorph.