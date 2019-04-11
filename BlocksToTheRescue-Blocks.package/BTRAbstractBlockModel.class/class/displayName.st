insertion
displayName

	| start end|
	start := (self name beginsWith: 'BTR')
		ifTrue: [4]
		ifFalse: [1].
	end := self name size - ((self name endsWith: 'Model')
		ifTrue: [5]
		ifFalse: [0]).
	^ self name copyFrom: start to: end