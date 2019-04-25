as yet unclassified
exampleBlockAsNode
	<BTRBlockModel>
	^ #V2;BTRGraphModel;902;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 2);
 instVarNamed: #edges put: (self referenceAt: 11);
 yourself). 
self referenceDictionary at: 2 put: ((OrderedCollection new) add: (self referenceAt: 3); add: (self referenceAt: 5); add: (self referenceAt: 7); add: (self referenceAt: 9); yourself). 
self referenceDictionary at: 3 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 4); yourself). 
self referenceDictionary at: 4 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 7 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 8); yourself). 
self referenceDictionary at: 8 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 9 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 10); yourself). 
self referenceDictionary at: 10 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 11 put: ((OrderedCollection new) add: ((self referenceAt: 9) -> (self referenceAt: 3)); add: ((self referenceAt: 3) -> (self referenceAt: 7)); add: ((self referenceAt: 9) -> (self referenceAt: 5)); add: ((self referenceAt: 5) -> (self referenceAt: 7)); yourself). 
self referenceDictionary at: 1;