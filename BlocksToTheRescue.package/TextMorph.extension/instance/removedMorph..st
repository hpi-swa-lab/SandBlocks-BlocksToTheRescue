*BlocksToTheRescue
removedMorph: aMorph
	| range |
	range := self findRunForMorph: aMorph.
	range ifNotNil:
		[self paragraph replaceFrom: range first to: range last
				with: Text new displaying: false.
		self fit].
	aMorph textAnchorType: nil.
	aMorph relativeTextAnchorPosition: nil.
	super removedMorph: aMorph.