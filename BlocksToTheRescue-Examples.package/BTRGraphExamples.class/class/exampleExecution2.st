as yet unclassified
exampleExecution2
	| t1 t2 |
	t1 := 42.
	t2 := 'Cheese'.
	^ #V2;BTRGraphModel;AC1;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: (self referenceAt: 2);
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #nodes put: (self referenceAt: 4);
 instVarNamed: #edges put: (self referenceAt: 9);
 yourself). 
	self referenceDictionary at: 2 put: ((Dictionary new) add: (self referenceAt: 3); yourself). 
	self referenceDictionary at: 3 put: (#parameterNames -> #('foo' 'bar')).self referenceDictionary at: 4 put: ((OrderedCollection new) add: (self referenceAt: 5); add: (self referenceAt: 6); add: (self referenceAt: 7); add: (self referenceAt: 8); yourself). 
	self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
	self referenceDictionary at: 6 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
	self referenceDictionary at: 7 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
	self referenceDictionary at: 8 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
	self referenceDictionary at: 9 put: ((OrderedCollection new) add: (self referenceAt: 10); add: (self referenceAt: 13); add: (self referenceAt: 16); add: (self referenceAt: 19); yourself). 
	self referenceDictionary at: 10 put: ((self referenceAt: 11) -> (self referenceAt: 12)).self referenceDictionary at: 11 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
	self referenceDictionary at: 12 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
	self referenceDictionary at: 13 put: ((self referenceAt: 14) -> (self referenceAt: 15)).self referenceDictionary at: 14 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
	self referenceDictionary at: 15 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
	self referenceDictionary at: 16 put: ((self referenceAt: 17) -> (self referenceAt: 18)).self referenceDictionary at: 17 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
	self referenceDictionary at: 18 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
	self referenceDictionary at: 19 put: ((self referenceAt: 20) -> (self referenceAt: 21)).self referenceDictionary at: 20 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
	self referenceDictionary at: 21 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
	self referenceDictionary at: 1;