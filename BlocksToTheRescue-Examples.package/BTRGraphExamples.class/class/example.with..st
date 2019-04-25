as yet unclassified
example: foo with: bar
	<BTRBlockModel>
	^ #V2;BTRGraphModel;BAA;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 2);
 instVarNamed: #edges put: (self referenceAt: 19);
 yourself). 
self referenceDictionary at: 2 put: ((OrderedCollection new) add: (self referenceAt: 3); add: (self referenceAt: 7); add: (self referenceAt: 11); add: (self referenceAt: 15); yourself). 
self referenceDictionary at: 3 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 4); yourself). 
self referenceDictionary at: 4 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (Text string: '(one * 2) asString' runs: (self referenceAt: 6)). 
self referenceDictionary at: 6 put: (RunArray runs: #(18) values: #(#())). 
self referenceDictionary at: 7 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 8); yourself). 
self referenceDictionary at: 8 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 9); yourself). 
self referenceDictionary at: 9 put: (Text string: '''Old '', one' runs: (self referenceAt: 10)). 
self referenceDictionary at: 10 put: (RunArray runs: #(11) values: #(#())). 
self referenceDictionary at: 11 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 12); yourself). 
self referenceDictionary at: 12 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 13); yourself). 
self referenceDictionary at: 13 put: (Text string: 'one, '' piles of '', two' runs: (self referenceAt: 14)). 
self referenceDictionary at: 14 put: (RunArray runs: #(22) values: #(#())). 
self referenceDictionary at: 15 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 16); yourself). 
self referenceDictionary at: 16 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 17); yourself). 
self referenceDictionary at: 17 put: (Text string: '{foo . bar}' runs: (self referenceAt: 18)). 
self referenceDictionary at: 18 put: (RunArray runs: #(11) values: #(#())). 
self referenceDictionary at: 19 put: ((OrderedCollection new) add: ((self referenceAt: 15) -> (self referenceAt: 3)); add: ((self referenceAt: 3) -> (self referenceAt: 11)); add: ((self referenceAt: 15) -> (self referenceAt: 7)); add: ((self referenceAt: 7) -> (self referenceAt: 11)); yourself). 
self referenceDictionary at: 1;