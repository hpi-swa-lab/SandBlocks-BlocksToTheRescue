as yet unclassified
exampleExecution2
	
	| foo bar |
	foo := 42.
	bar := 'Cheese'.
	^ #V2;BTRGraphModel;795;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: (self referenceAt: 2);
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #nodes put: (self referenceAt: 3);
 instVarNamed: #edges put: (self referenceAt: 8);
 yourself). 
	self referenceDictionary at: 2 put: ((Dictionary new) add: (#parameterNames->#('foo' 'bar')); yourself). 
	self referenceDictionary at: 3 put: ((OrderedCollection new) add: (self referenceAt: 4); add: (self referenceAt: 5); add: (self referenceAt: 6); add: (self referenceAt: 7); yourself). 
	self referenceDictionary at: 4 put: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself). 
	self referenceDictionary at: 5 put: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself). 
	self referenceDictionary at: 6 put: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
	self referenceDictionary at: 7 put: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself). 
	self referenceDictionary at: 8 put: ((OrderedCollection new) add: ((BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself)); add: ((BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself)); add: ((BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself)); add: ((BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself)); yourself). 
	self referenceDictionary at: 1;