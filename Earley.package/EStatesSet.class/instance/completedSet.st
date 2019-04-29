transform set
completedSet

	| sets |
	sets := EStatesSet for: self grammar.
	self onIndexesDo: [:i :j | | state |
		state := (self set: i) at: j.
		state next > (self grammar ruleCollection at: state ruleNumber) size
			ifTrue: [sets set: i add: state copy]].
	^ sets