as yet unclassified
exampleExecution2
	
	| foo bar |
	foo := 42.
	bar := 'Cheese'.
	^ #V2;BTRGraphModel;9D7;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: (self referenceAt: 2);
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 3);
 instVarNamed: #edges put: (self referenceAt: 8);
 yourself). 
self referenceDictionary at: 2 put: ((Dictionary new) add: (#parameterNames -> #('foo' 'bar')); yourself). 
self referenceDictionary at: 3 put: ((OrderedCollection new) add: (self referenceAt: 4); add: (self referenceAt: 5); add: (self referenceAt: 6); add: (self referenceAt: 7); yourself). 
self referenceDictionary at: 4 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 6 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 7 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 8 put: ((OrderedCollection new) add: ((self referenceAt: 9) -> (self referenceAt: 10)); add: ((self referenceAt: 11) -> (self referenceAt: 12)); add: ((self referenceAt: 13) -> (self referenceAt: 14)); add: ((self referenceAt: 15) -> (self referenceAt: 16)); yourself). 
self referenceDictionary at: 9 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 10 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 11 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 12 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 13 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 14 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 15 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 16 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 1;