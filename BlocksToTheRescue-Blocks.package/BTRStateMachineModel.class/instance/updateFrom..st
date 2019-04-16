accessing
updateFrom: aCollection

	| currentStateNames |
	currentStateNames := aCollection collect: [:stateAssoc |
		(self states at: stateAssoc key ifAbsentPut: [self pvtCreateState: stateAssoc key])
			updateFrom: stateAssoc value.
		stateAssoc key].
	(self states keys copyWithoutAll: currentStateNames)
		do: [:key | self states removeKey: key].