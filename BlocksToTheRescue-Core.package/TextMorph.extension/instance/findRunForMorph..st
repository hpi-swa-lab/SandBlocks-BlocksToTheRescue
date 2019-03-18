*BlocksToTheRescue-Core
findRunForMorph: aMorph
	"Return the first interval at which the Morph is anchored"
	| begin end |
	begin := 0.
	text runs withStartStopAndValueDo:
		[:start :stop :attributes |
		(attributes anySatisfy: [:attribute | attribute anchoredMorph = aMorph])
			ifTrue: [begin = 0 ifTrue: [begin := start].
					end := stop]
			ifFalse: [begin > 0 ifTrue: [^ begin to: end]]].
	begin > 0 ifTrue: [^ begin to: end].
	^ nil