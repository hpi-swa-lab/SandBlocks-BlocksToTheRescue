as yet unclassified
newFrom: anObject
	anObject dependents
		ifEmpty: [^ anObject].
	^ self new
		theObject: anObject;
		yourself