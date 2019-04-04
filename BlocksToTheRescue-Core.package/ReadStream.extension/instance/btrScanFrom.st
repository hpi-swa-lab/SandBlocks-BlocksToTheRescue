*BlocksToTheRescue-Core
btrScanFrom

	| length serializedObject objectStream class className |
	className := self upTo: $; .
	class := Smalltalk classNamed: className.
	class ifNil: [^ self btrScanError: 'Unknown class "', className, '"!'].

	length := Integer readFrom: (self upTo: $;) base: 16.
	serializedObject := self next: length.
	self next ~= $; 
		ifTrue: [^ self btrScanError: 'Read object length does not match expected object length'].
	
	objectStream := (ReadStream on: serializedObject).
	^ class btrScanFrom: objectStream