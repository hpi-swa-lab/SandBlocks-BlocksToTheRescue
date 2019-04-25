as yet unclassified
exampleEditor
	<BTRBlockModel>
	^ #V2;BTRGraphModel;E26;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 2);
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 14);
 instVarNamed: #edges put: (self referenceAt: 23);
 yourself). 
self referenceDictionary at: 2 put: (Text string: 'BTRGraphModel example1' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(13 1 8) values: ((Array new: 3) at: 1 put: (self referenceAt: 4); at: 2 put: (self referenceAt: 9); at: 3 put: (self referenceAt: 11); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 2) at: 1 put: (self referenceAt: 5); at: 2 put: (self referenceAt: 7); yourself). 
self referenceDictionary at: 5 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (Color r: 0.0 g: 0.0 b: 0.0). 
self referenceDictionary at: 7 put: (BTRSimpleClassLink basicNew instVarAt: 1 put: (self referenceAt: 8); yourself). 
self referenceDictionary at: 8 put: BTRGraphModel. 
self referenceDictionary at: 9 put: ((Array new: 1) at: 1 put: (self referenceAt: 10); yourself). 
self referenceDictionary at: 10 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 11 put: ((Array new: 1) at: 1 put: (self referenceAt: 12); yourself). 
self referenceDictionary at: 12 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 13); yourself). 
self referenceDictionary at: 13 put: (Color r: 0.0 g: 0.0 b: 0.5). 
self referenceDictionary at: 14 put: ((OrderedCollection new) add: (self referenceAt: 15); add: (self referenceAt: 17); add: (self referenceAt: 19); add: (self referenceAt: 21); yourself). 
self referenceDictionary at: 15 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 16); yourself). 
self referenceDictionary at: 16 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{(self argumentAt: 1) * 2}'; yourself). 
self referenceDictionary at: 17 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 18); yourself). 
self referenceDictionary at: 18 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{''Old '', self arguments first}'; yourself). 
self referenceDictionary at: 19 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 20); yourself). 
self referenceDictionary at: 20 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{self arguments first asString, '' piles of '', self arguments second}'; yourself). 
self referenceDictionary at: 21 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 22); yourself). 
self referenceDictionary at: 22 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: '{foo. bar}'; yourself). 
self referenceDictionary at: 23 put: ((OrderedCollection new) add: ((self referenceAt: 21) -> (self referenceAt: 15)); add: ((self referenceAt: 15) -> (self referenceAt: 19)); add: ((self referenceAt: 21) -> (self referenceAt: 17)); add: ((self referenceAt: 17) -> (self referenceAt: 19)); yourself). 
self referenceDictionary at: 1;