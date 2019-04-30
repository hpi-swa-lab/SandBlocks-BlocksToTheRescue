*BlocksToTheRescue-Core
removedMorph: aMorph
	| range |
	range := self findRunForMorph: aMorph.
	range ifNotNil:
		[self editor replace: range with: Text new.
		self fit].
	aMorph textAnchorType: nil.
	aMorph relativeTextAnchorPosition: nil.
	aMorph eventHandler: nil.
	self removeDependent: (aMorph valueOfProperty: #BTRBlockModel ifAbsent: [nil]).
	super removedMorph: aMorph.