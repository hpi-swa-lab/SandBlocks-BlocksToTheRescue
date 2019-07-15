as yet unclassified
newFrom: anObject
	anObject dependents
		ifEmpty: [^ anObject].
	^ self new
		theSubject: anObject;
		yourself