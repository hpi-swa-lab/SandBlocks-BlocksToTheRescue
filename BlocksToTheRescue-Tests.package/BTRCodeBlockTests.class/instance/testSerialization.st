as yet unclassified
testSerialization
	
	| originalModel recreatedModel |
	originalModel := BTRCodeModel for: 'x * x'.
	
	recreatedModel := (ReadStream on: (String streamContents: [ :stream |
			 originalModel btrWriteScanOn: stream ])) btrScanFrom.
		
	self assert: originalModel equals: recreatedModel.