as yet unclassified
testComposedExecutionChangeIsPropagated

	| value expected |
	expected := #bar.
	#V2;BTRCodeModel;605;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 11); yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: ((Array new: 1) at: 1 put: (self referenceAt: 4); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 7); instVarAt: 7 put: (self referenceAt: 9); yourself). 
self referenceDictionary at: 7 put: (Text string: 'value := expected.' runs: (self referenceAt: 8)). 
self referenceDictionary at: 8 put: (RunArray runs: #(18) values: #(#())). 
self referenceDictionary at: 9 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 10)); yourself). 
self referenceDictionary at: 10 put: (212@57). 
self referenceDictionary at: 11 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 12)); yourself). 
self referenceDictionary at: 12 put: (270@81). 
self referenceDictionary at: 1;.
	self
		assert: expected
		equals:	value