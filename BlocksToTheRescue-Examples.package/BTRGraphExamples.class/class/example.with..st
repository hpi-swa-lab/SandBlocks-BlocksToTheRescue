as yet unclassified
example: foo with: bar
	<BTRBlockModel>
	^ #V2;BTRGraphModel;F82;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 2);
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 4);
 instVarNamed: #edges put: (self referenceAt: 23);
 yourself). 
self referenceDictionary at: 2 put: (Text string: 'BTRGraphExamples example1' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(25) values: #(#())). 
self referenceDictionary at: 4 put: ((OrderedCollection new) add: (self referenceAt: 5); add: (self referenceAt: 11); add: (self referenceAt: 15); add: (self referenceAt: 19); yourself). 
self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 6);
 yourself). 
self referenceDictionary at: 6 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 7);
 instVarNamed: #viewData put: (self referenceAt: 9);
 yourself). 
self referenceDictionary at: 7 put: (Text string: 'one * 2' runs: (self referenceAt: 8)). 
self referenceDictionary at: 8 put: (RunArray runs: #(7) values: #(#())). 
self referenceDictionary at: 9 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 10)); yourself). 
self referenceDictionary at: 10 put: (160@80). 
self referenceDictionary at: 11 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 12);
 yourself). 
self referenceDictionary at: 12 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: '''Old '', one';
 instVarNamed: #viewData put: (self referenceAt: 13);
 yourself). 
self referenceDictionary at: 13 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 14)); yourself). 
self referenceDictionary at: 14 put: (160@80). 
self referenceDictionary at: 15 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 16);
 yourself). 
self referenceDictionary at: 16 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: 'one asString, '' piles of '', two';
 instVarNamed: #viewData put: (self referenceAt: 17);
 yourself). 
self referenceDictionary at: 17 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 18)); yourself). 
self referenceDictionary at: 18 put: (160@80). 
self referenceDictionary at: 19 put: (BTRGraphNode basicNew instVarNamed: #block put: (self referenceAt: 20);
 yourself). 
self referenceDictionary at: 20 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: '{foo. bar}';
 instVarNamed: #viewData put: (self referenceAt: 21);
 yourself). 
self referenceDictionary at: 21 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 22)); yourself). 
self referenceDictionary at: 22 put: (160@80). 
self referenceDictionary at: 23 put: ((OrderedCollection new) add: ((self referenceAt: 19) -> (self referenceAt: 5)); add: ((self referenceAt: 5) -> (self referenceAt: 15)); add: ((self referenceAt: 19) -> (self referenceAt: 11)); add: ((self referenceAt: 11) -> (self referenceAt: 15)); yourself). 
self referenceDictionary at: 1;