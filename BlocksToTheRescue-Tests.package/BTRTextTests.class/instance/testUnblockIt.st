testing
testUnblockIt

	| editor |
	editor := #V2;BTRWrapperBlock;978;Wrapper1;BTRCodeModel;95D;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 16); yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: ((Array new: 1) at: 1 put: (self referenceAt: 4); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRColorModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 7);
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #value put: (self referenceAt: 15);
 yourself). 
self referenceDictionary at: 7 put: (Text string: ' muchLighter' runs: (self referenceAt: 8)). 
self referenceDictionary at: 8 put: (RunArray runs: #(1 12) values: ((Array new: 2) at: 1 put: (self referenceAt: 9); at: 2 put: #(); yourself)). 
self referenceDictionary at: 9 put: ((Array new: 1) at: 1 put: (self referenceAt: 10); yourself). 
self referenceDictionary at: 10 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 11); yourself). 
self referenceDictionary at: 11 put: (BTRColorModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 12);
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #value put: (self referenceAt: 14);
 yourself). 
self referenceDictionary at: 12 put: (Text string: 'Color new' runs: (self referenceAt: 13)). 
self referenceDictionary at: 13 put: (RunArray runs: #(9) values: #(#())). 
self referenceDictionary at: 14 put: (Color r: 0.0 g: 0.0 b: 0.0). 
self referenceDictionary at: 15 put: (Color r: 0.767 g: 0.767 b: 0.767). 
self referenceDictionary at: 16 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 17)); yourself). 
self referenceDictionary at: 17 put: (178@24). 
self referenceDictionary at: 1;;inlineView textMorph editor.
	editor
		selectAll;
		unblock.
	self 
		assert: #V2;BTRWrapperBlock;614;Wrapper1;BTRCodeModel;5F9;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 10); yourself). 
self referenceDictionary at: 2 put: (Text string: ' muchLighter' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1 12) values: ((Array new: 2) at: 1 put: (self referenceAt: 4); at: 2 put: #(); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRColorModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 7);
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #value put: (self referenceAt: 9);
 yourself). 
self referenceDictionary at: 7 put: (Text string: 'Color new' runs: (self referenceAt: 8)). 
self referenceDictionary at: 8 put: (RunArray runs: #(9) values: #(#())). 
self referenceDictionary at: 9 put: (Color r: 0.0 g: 0.0 b: 0.0). 
self referenceDictionary at: 10 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 11)); yourself). 
self referenceDictionary at: 11 put: (178@24). 
self referenceDictionary at: 1;;code
		equals: editor selection.