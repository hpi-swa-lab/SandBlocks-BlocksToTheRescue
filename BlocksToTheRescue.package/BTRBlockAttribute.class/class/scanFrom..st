fileIn/Out
scanFrom: aStream

	| length morphStream |
	length := (aStream upTo: $;) asInteger.
	morphStream := (MultiByteBinaryOrTextStream with: (aStream next: length)) binary reset.
	aStream next ~= $; 
		ifTrue: [self error: 'Read morph length does not match expected morph length'].
	^ self new 
		anchoredBlock: morphStream fileInObjectAndCode;
		yourself