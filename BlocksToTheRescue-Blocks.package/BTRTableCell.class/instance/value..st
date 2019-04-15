accessing
value: anObject

	| oldValue |
	oldValue := value.
	value := anObject.
	oldValue ~= value
		ifTrue: [
			"self changed: #value.
			self changed."
			"self tableModel valueAt: self rowIndex at: self columnIndex put: self value"].