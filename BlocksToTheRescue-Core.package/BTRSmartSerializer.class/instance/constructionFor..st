as yet unclassified
constructionFor: anObject
	| stream |
	(Smalltalk globals includes: anObject) ifTrue: [Smalltalk globals keysAndValuesDo: [:key :value | value == anObject ifTrue: [^ '(', key asString , ').']]]. "not keyAtValue: because it uses identity"
	Smalltalk globals == anObject ifTrue: [^ '(', (anObject asString), ').'].
	(self isSpecialClass: anObject) ifTrue: [^ '(', (self specialConstructionFor: anObject), ').'].
	stream := BTRSmartStream on: self.
	anObject storeOn: stream.
	stream nextPut: $..
	^ stream contents
	"^ String streamContents: [:aStream |
			aStream nextPut: $(.
	anObject class isVariable
		ifTrue: [aStream nextPutAll: '(', anObject class name, ' basicNew: ';
					store: anObject basicSize;
					nextPutAll: ') ']
		ifFalse: [aStream nextPutAll: anObject class name, ' basicNew'].
		
	anObject class allInstVarNames do:
		[:variableName | aStream nextPutAll: ' instVarNamed: #';
			nextPutAll: variableName;
			nextPutAll: ' put: ';
			nextPutAll: (self stringReferenceTo: (anObject instVarNamed: variableName));
			nextPut: $; ;
			nextPut: Character cr].
		
	1 to: anObject basicSize do:
		[:i |
		aStream nextPutAll: ' basicAt: ';
			store: i;
			nextPutAll: ' put: ';
			nextPutAll: (self stringReferenceTo: (anObject basicAt: i));
			nextPut: $;].
	aStream nextPutAll: ' yourself).
	']"


