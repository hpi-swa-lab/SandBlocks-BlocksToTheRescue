as yet unclassified
testInlineExecution

	| foo bar |
	foo := 42.
	bar := 'Cheese'.	
	self 
		assert: '84 piles of Old Cheese'
		equals: #V2;BTRGraphModel;9E0;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 2);
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 4);
 instVarNamed: #edges put: (self referenceAt: 13);
 yourself). 
self referenceDictionary at: 2 put: (Text string: 'BTRGraphTests fixture' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(21) values: #(#())). 
self referenceDictionary at: 4 put: ((OrderedCollection new) add: (self referenceAt: 5); add: (self referenceAt: 7); add: (self referenceAt: 9); add: (self referenceAt: 11); yourself). 
self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: 'one * 2'; instVarAt: 7 put: nil; yourself). 
self referenceDictionary at: 7 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 8); yourself). 
self referenceDictionary at: 8 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '''Old '', one'; instVarAt: 7 put: nil; yourself). 
self referenceDictionary at: 9 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 10); yourself). 
self referenceDictionary at: 10 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: 'one asString, '' piles of '', two'; instVarAt: 7 put: nil; yourself). 
self referenceDictionary at: 11 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 12); yourself). 
self referenceDictionary at: 12 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{foo. bar}'; instVarAt: 7 put: nil; yourself). 
self referenceDictionary at: 13 put: ((OrderedCollection new) add: ((self referenceAt: 11) -> (self referenceAt: 5)); add: ((self referenceAt: 5) -> (self referenceAt: 9)); add: ((self referenceAt: 11) -> (self referenceAt: 7)); add: ((self referenceAt: 7) -> (self referenceAt: 9)); yourself). 
self referenceDictionary at: 1;first.
	