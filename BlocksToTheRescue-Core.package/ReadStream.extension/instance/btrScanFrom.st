*BlocksToTheRescue-Core
btrScanFrom

	| length serializedObject objectStream class |
	class := Smalltalk classNamed: (self upTo: $;).
	class ifNil: [^ self btrScanError: 'Unknown class "', class, '"!'].

	length := Integer readFrom: (self upTo: $;) base: 16.
	serializedObject := self next: length.
	self next ~= $; 
		ifTrue: [^ self btrScanError: 'Read object length does not match expected object length'].
	
	objectStream := (ReadStream on: serializedObject).
	^ class btrScanFrom: objectStream