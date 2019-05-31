as yet unclassified
exampleC
	<BTRBlockModel>
	^ #V2;BTRCodeModel;2EB;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 4);
 yourself). 
self referenceDictionary at: 2 put: (Text string: '2' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: #(#())). 
self referenceDictionary at: 4 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 5)); yourself). 
self referenceDictionary at: 5 put: (1091@384). 
self referenceDictionary at: 1;