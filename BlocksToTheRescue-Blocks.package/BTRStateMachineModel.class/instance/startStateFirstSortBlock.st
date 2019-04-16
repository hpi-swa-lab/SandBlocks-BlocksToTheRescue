utils
startStateFirstSortBlock

	^ [:a :b | (a isStartState or: [a name <= b name])
		and: [b isStartState not]]