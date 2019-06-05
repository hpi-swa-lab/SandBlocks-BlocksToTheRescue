versioned scanning
scanFromV3: aStream
	
	| blockModelBinary blockModelStream blockModel |
	blockModelBinary := (Ascii85Converter decodeToBytes: aStream) contents.
	blockModelStream := (MultiByteBinaryOrTextStream with: blockModelBinary) binary reset.
	blockModel := blockModelStream fileInObjectAndCode.
	^ self new 
		blockModel: blockModel;
		yourself