as yet unclassified
testReceiverIsCorrect

	self 
		assert: self methodUsingSelf 
		equals: #V2;BTRCodeModel;290;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 4); yourself). 
self referenceDictionary at: 2 put: (Text string: 'self methodUsingSelf' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(20) values: #(#())). 
self referenceDictionary at: 4 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 5)); yourself). 
self referenceDictionary at: 5 put: (138@22). 
self referenceDictionary at: 1;