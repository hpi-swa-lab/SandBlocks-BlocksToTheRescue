testing
testDiffingEqual

	| firstText secondText patch |
	firstText := #V2;BTRWrapperBlock;536;Wrapper1;BTRCodeModel;51B;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 8); yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: ((Array new: 1) at: 1 put: (self referenceAt: 4); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRColorModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #value put: (self referenceAt: 7);
 yourself). 
self referenceDictionary at: 7 put: (Color r: 0.0 g: 1 b: 0.502). 
self referenceDictionary at: 8 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 9)); yourself). 
self referenceDictionary at: 9 put: (94@22). 
self referenceDictionary at: 1;;code copy.
	secondText := #V2;BTRWrapperBlock;536;Wrapper1;BTRCodeModel;51B;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 8); yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: ((Array new: 1) at: 1 put: (self referenceAt: 4); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRColorModel basicNew instVarNamed: #properties put: nil;
 instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #inlineViewData put: nil;
 instVarNamed: #editorViewData put: nil;
 instVarNamed: #value put: (self referenceAt: 7);
 yourself). 
self referenceDictionary at: 7 put: (Color r: 0.0 g: 1 b: 0.502). 
self referenceDictionary at: 8 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 9)); yourself). 
self referenceDictionary at: 9 put: (94@22). 
self referenceDictionary at: 1;;code copy.
	patch := (TextDiffBuilder from: firstText to: secondText) buildPatchSequence.
	self 
		assert: {#match->firstText} asSet 
		equals: patch asSet.