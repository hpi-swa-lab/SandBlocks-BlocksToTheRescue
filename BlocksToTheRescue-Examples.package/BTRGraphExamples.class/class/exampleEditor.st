as yet unclassified
exampleEditor
	<BTRBlockModel>
	^ #V2;BTRGraphModel;957;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 2);
 instVarNamed: #edges put: (self referenceAt: 7);
 yourself). 
self referenceDictionary at: 2 put: ((OrderedCollection new) add: (self referenceAt: 3); add: (self referenceAt: 4); add: (self referenceAt: 5); add: (self referenceAt: 6); yourself). 
self referenceDictionary at: 3 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 4 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 6 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 7 put: ((OrderedCollection new) add: ((self referenceAt: 8) -> (self referenceAt: 9)); add: ((self referenceAt: 10) -> (self referenceAt: 11)); add: ((self referenceAt: 12) -> (self referenceAt: 13)); add: ((self referenceAt: 14) -> (self referenceAt: 15)); yourself). 
self referenceDictionary at: 8 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 9 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 10 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 11 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 12 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 13 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 14 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 15 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 1;