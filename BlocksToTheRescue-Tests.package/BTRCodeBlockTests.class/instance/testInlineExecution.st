as yet unclassified
testInlineExecution

	| x |
	x := 42.
	self assert: x * x equals: #V2;BTRCodeModel;27D;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 4);
 yourself). 
self referenceDictionary at: 2 put: (Text string: 'x * x' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(5) values: #(#())). 
self referenceDictionary at: 4 put: ((Dictionary new)). 
self referenceDictionary at: 1;.