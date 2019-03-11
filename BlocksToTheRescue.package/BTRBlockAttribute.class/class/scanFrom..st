fileIn/Out
scanFrom: aStream

	| length morphStream morphBinary |
	length := (aStream upTo: $;) asInteger.
	morphBinary := aStream next: length.
	aStream next ~= $; 
		ifTrue: [self error: 'Read morph length does not match expected morph length'].
	morphBinary := Compiler evaluate: morphBinary.	
	morphStream := (MultiByteBinaryOrTextStream with: morphBinary) binary reset.
	^ self new 
		anchoredBlock: morphStream fileInObjectAndCode;
		yourself