as yet unclassified
exampleExecution2
	
	| foo bar |
	foo := 42.
	bar := 'Cheese'.
	^ #V2;BTRGraphModel;5A0;1;(BTRGraphModel basicNew instVarNamed: #properties put: ((Dictionary new) add: (#parameterNames->#('foo' 'bar')); yourself);
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #nodes put: ((OrderedCollection new) add: (BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself); add: (BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself); add: (BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself); add: (BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself); yourself);
 instVarNamed: #edges put: ((OrderedCollection new) add: ((BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself)); add: ((BTRGraphNode basicNew instVarAt: 1 put: '{(self argumentAt: 1) * 2}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself)); add: ((BTRGraphNode basicNew instVarAt: 1 put: '{foo. bar}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself)); add: ((BTRGraphNode basicNew instVarAt: 1 put: '{''Old '', self arguments first}'; yourself)->(BTRGraphNode basicNew instVarAt: 1 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself)); yourself);
 yourself);