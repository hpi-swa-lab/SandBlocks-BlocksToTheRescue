as yet unclassified
exampleExecution2
	
	| foo bar |
	foo := 42.
	bar := 'Cheese'.
	^ #V2;BTRGraphModel;B62;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 2);
 instVarNamed: #viewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 4);
 instVarNamed: #edges put: (self referenceAt: 13);
 yourself). 
self referenceDictionary at: 2 put: (Text string: 'self example1' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(13) values: #(#())). 
self referenceDictionary at: 4 put: ((OrderedCollection new) add: (self referenceAt: 5); add: (self referenceAt: 7); add: (self referenceAt: 9); add: (self referenceAt: 11); yourself). 
self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 6);
 yourself). 
self referenceDictionary at: 6 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: nil;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: '{one * 2}';
 instVarNamed: #viewData put: nil;
 yourself). 
self referenceDictionary at: 7 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 8);
 yourself). 
self referenceDictionary at: 8 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: nil;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: '{''Old '', one}';
 instVarNamed: #viewData put: nil;
 yourself). 
self referenceDictionary at: 9 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 10);
 yourself). 
self referenceDictionary at: 10 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: nil;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: '{one asString, '' piles of '', two}';
 instVarNamed: #viewData put: nil;
 yourself). 
self referenceDictionary at: 11 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 12);
 yourself). 
self referenceDictionary at: 12 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: nil;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: '{foo. bar}';
 instVarNamed: #viewData put: nil;
 yourself). 
self referenceDictionary at: 13 put: ((OrderedCollection new) add: ((self referenceAt: 11) -> (self referenceAt: 5)); add: ((self referenceAt: 5) -> (self referenceAt: 9)); add: ((self referenceAt: 11) -> (self referenceAt: 7)); add: ((self referenceAt: 7) -> (self referenceAt: 9)); yourself). 
self referenceDictionary at: 1;