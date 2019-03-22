versioned scanning
scanFromV2: aStream

	| length serializedObject objectStream class |
	class := Smalltalk classNamed: (aStream upTo: $;).
	class ifNil: [^ self scanError: 'Unknown class "', class, '"!'].

	length := Integer readFrom: (aStream upTo: $;) base: 16.
	serializedObject := aStream next: length.
	aStream next ~= $; 
		ifTrue: [^ self scanError: 'Read object length does not match expected object length'].
	
	objectStream := (ReadStream on: serializedObject).
	^ self new 
		blockModel: (class btrScanFrom: objectStream);
		yourself