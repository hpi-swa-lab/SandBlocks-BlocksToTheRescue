as yet unclassified
testChangeIsPropagated

	| value expected |
	expected := #bar.
	#V2;BTRCodeModel;2FB;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 4);
 yourself). 
self referenceDictionary at: 2 put: (Text string: 'value := expected.' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(18) values: #(#())). 
self referenceDictionary at: 4 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 5)); yourself). 
self referenceDictionary at: 5 put: (270@81). 
self referenceDictionary at: 1;.
	self
		assert: expected
		equals:	value