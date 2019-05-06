as yet unclassified
exampleBlockAsNode
	<BTRBlockModel>
	^ #V2;BTRGraphModel;1177;Smart;self referenceDictionary at: 1 put: (BTRGraphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #nodes put: (self referenceAt: 2);
 instVarNamed: #edges put: (self referenceAt: 25);
 yourself). 
self referenceDictionary at: 2 put: ((OrderedCollection new) add: (self referenceAt: 3); add: (self referenceAt: 18); add: (self referenceAt: 21); yourself). 
self referenceDictionary at: 3 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 4); yourself). 
self referenceDictionary at: 4 put: (BTRMorphModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #value put: (self referenceAt: 5);
 yourself). 
self referenceDictionary at: 5 put: (CircleMorph basicNew instVarNamed: #bounds put: (self referenceAt: 6);
instVarNamed: #submorphs put: Array empty;
 instVarNamed: #fullBounds put: nil;
 instVarNamed: #color put: (self referenceAt: 7);
 instVarNamed: #extension put: (self referenceAt: 8);
 instVarNamed: #borderWidth put: 1;
 instVarNamed: #borderColor put: (self referenceAt: 16);
 yourself). 
self referenceDictionary at: 6 put: (995@404 corner: 1075@484). 
self referenceDictionary at: 7 put: (Color r: 0.03 g: 1 b: 0.03). 
self referenceDictionary at: 8 put: (MorphExtension basicNew instVarAt: 1 put: false; instVarAt: 2 put: true; instVarAt: 3 put: false; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: nil; instVarAt: 7 put: false; instVarAt: 8 put: nil; instVarAt: 9 put: nil; instVarAt: 10 put: nil; instVarAt: 11 put: (self referenceAt: 9); yourself). 
self referenceDictionary at: 9 put: ((IdentityDictionary new) add: (#originalAngle -> 0.0); add: (#layoutFrame -> (self referenceAt: 10)); add: (#signalConnections -> (self referenceAt: 11)); add: (#originalCenter -> (self referenceAt: 12)); add: (#referencePosition -> (self referenceAt: 13)); add: (#animations -> (self referenceAt: 14)); add: (#borderStyle -> (self referenceAt: 15)); add: (#layoutProperties -> (self referenceAt: 17)); yourself). 
self referenceDictionary at: 10 put: (LayoutFrame basicNew instVarAt: 1 put: 0; instVarAt: 2 put: 0; instVarAt: 3 put: 0; instVarAt: 4 put: 0; instVarAt: 5 put: 1; instVarAt: 6 put: 0; instVarAt: 7 put: 1; instVarAt: 8 put: 0; yourself). 
self referenceDictionary at: 11 put: ((Dictionary new)). 
self referenceDictionary at: 12 put: (1035@444). 
self referenceDictionary at: 13 put: (1035.0@444.0). 
self referenceDictionary at: 14 put: ((OrderedCollection new)). 
self referenceDictionary at: 15 put: (SimpleBorder basicNew instVarAt: 1 put: (self referenceAt: 16); instVarAt: 2 put: (self referenceAt: 16); instVarAt: 3 put: 1; yourself). 
self referenceDictionary at: 16 put: (Color r: 0.0 g: 0.0 b: 0.0). 
self referenceDictionary at: 17 put: (LayoutProperties basicNew instVarAt: 1 put: #spaceFill; instVarAt: 2 put: #spaceFill; instVarAt: 3 put: false; yourself). 
self referenceDictionary at: 18 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 19); yourself). 
self referenceDictionary at: 19 put: (BTRColorModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #value put: (self referenceAt: 20);
 yourself). 
self referenceDictionary at: 20 put: (Color r: 1 g: 0.573 b: 0.0). 
self referenceDictionary at: 21 put: (BTRGraphNode basicNew instVarAt: 1 put: (self referenceAt: 22); yourself). 
self referenceDictionary at: 22 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 23); instVarAt: 7 put: nil; yourself). 
self referenceDictionary at: 23 put: (Text string: 'one copy
	color: two;
	yourself' runs: (self referenceAt: 24)). 
self referenceDictionary at: 24 put: (RunArray runs: #(31) values: #(#())). 
self referenceDictionary at: 25 put: ((OrderedCollection new) add: ((self referenceAt: 3) -> (self referenceAt: 21)); add: ((self referenceAt: 18) -> (self referenceAt: 21)); yourself). 
self referenceDictionary at: 1;