as yet unclassified
firstDeepSubmorphMatching: aPredicate in: aMorph
	"todo: implement on Morph and replace aMorph with self"
	aMorph submorphsDo: [:submorph |
		(aPredicate value: submorph) ifTrue: [^ submorph].
		(self firstDeepSubmorphMatching: aPredicate in: submorph)
			ifNotNil: [:result | ^ result]].
	^ nil