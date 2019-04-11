accessing
value: newValue

	value = newValue ifTrue: [^ self].
	value := newValue.
	self contentsChanged.