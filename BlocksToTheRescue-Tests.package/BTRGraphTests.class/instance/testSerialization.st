as yet unclassified
testSerialization
	
	| originalModel recreatedModel |
	originalModel := self class fixture.
	
	recreatedModel := (ReadStream on: (String streamContents: [ :stream |
			 originalModel btrWriteScanOn: stream ])) btrScanFrom.
		
	self assert: originalModel equals: recreatedModel.