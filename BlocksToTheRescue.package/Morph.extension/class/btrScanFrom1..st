*BlocksToTheRescue-Core
btrScanFrom1: aReadStream

	| morphBinary morphStream |
	morphBinary := (Ascii85Converter decodeToBytes: aReadStream) contents.
	morphStream := (MultiByteBinaryOrTextStream with: morphBinary) binary reset.
	^ morphStream fileInObjectAndCode