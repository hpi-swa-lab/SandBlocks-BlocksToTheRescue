transform set
invertedSet

	| sets |
	sets := EStatesSet for: self grammar.
	self onIndexesDo: [:i :j | | state |
		state := (self set: i) at: j.
			sets set: state start add: (EEndState ruleNumber: state ruleNumber end: i)].
	^ sets