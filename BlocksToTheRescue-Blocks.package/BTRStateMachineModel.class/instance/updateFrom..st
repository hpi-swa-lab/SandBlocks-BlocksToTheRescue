serialization
updateFrom: aSequenceableCollection

	| currentStateNames |
	currentStateNames := aSequenceableCollection collect: [:stateAssoc |
		(self states at: stateAssoc key ifAbsentPut: [self pvtCreateState: stateAssoc key])
			updateFrom: stateAssoc value.
		stateAssoc key].

	(self states keys copyWithoutAll: currentStateNames)
		do: [:key | self states removeKey: key].

	aSequenceableCollection ifNotEmpty: [self setStart: aSequenceableCollection first key].

	self changed.
	self fixStateModels.