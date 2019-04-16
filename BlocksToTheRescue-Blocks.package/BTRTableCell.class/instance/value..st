accessing
value: anObject

	| oldValue |
	oldValue := value.
	value := anObject.
	oldValue ~= value
		ifTrue: [
			self changed: #value.
			self changed].