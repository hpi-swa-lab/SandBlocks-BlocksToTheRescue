as yet unclassified
testSerialization
	
	| originalModel recreatedModel |
	originalModel := self createPlainInstance.
	
	recreatedModel := (ReadStream on: (String streamContents: [ :stream |
			 originalModel btrWriteScanOn: stream ])) btrScanFrom.
		
	self assert: originalModel equals: recreatedModel.