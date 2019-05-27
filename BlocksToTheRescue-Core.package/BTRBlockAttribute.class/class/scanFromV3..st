versioned scanning
scanFromV3: aStream
	
	| blockModelBinary blockModelStream |
	blockModelBinary := (Ascii85Converter decodeToBytes: aStream) contents.
	blockModelStream := (MultiByteBinaryOrTextStream with: blockModelBinary) binary reset.
	^ self new 
		blockModel: blockModelStream fileInObjectAndCode;
		yourself