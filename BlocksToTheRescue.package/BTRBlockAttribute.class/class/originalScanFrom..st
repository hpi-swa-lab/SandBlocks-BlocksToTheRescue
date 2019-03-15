versioned scanning
originalScanFrom: aStream

	| length morphStream morphBinary |
	length := (aStream upTo: $;) asInteger.
	morphBinary := aStream next: length.
	aStream next ~= $; 
		ifTrue: [self scanError: 'Read morph length does not match expected morph length'].
	morphBinary := (Base64MimeConverter mimeDecodeToBytes: (ReadStream on: morphBinary)) contents.	
	morphStream := (MultiByteBinaryOrTextStream with: morphBinary) binary reset.
	^ self new 
		anchoredBlock: morphStream fileInObjectAndCode;
		yourself