testing
testDiffingNotEqual

	| firstText secondText patch |
	firstText := #V2;BTRWrapperBlock;54F;Wrapper1;BTRCodeModel;534;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 8);
 yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: ((Array new: 1) at: 1 put: (self referenceAt: 4); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRColorModel basicNew instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: nil;
 instVarNamed: #viewData put: nil;
 instVarNamed: #value put: (self referenceAt: 7);
 yourself). 
self referenceDictionary at: 7 put: (Color r: 0.0 g: 1 b: 0.502). 
self referenceDictionary at: 8 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 9)); yourself). 
self referenceDictionary at: 9 put: (86@22). 
self referenceDictionary at: 1;; code copy.
	secondText := #V2;BTRWrapperBlock;60F;Wrapper1;BTRCodeModel;5F4;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 10);
 yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: ((Array new: 1) at: 1 put: (self referenceAt: 4); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRColorModel basicNew instVarNamed: #cachedStoreString put: nil;
 instVarNamed: #originalText put: (self referenceAt: 7);
 instVarNamed: #viewData put: nil;
 instVarNamed: #value put: (self referenceAt: 9);
 yourself). 
self referenceDictionary at: 7 put: (Text string: 'Color yellow' runs: (self referenceAt: 8)). 
self referenceDictionary at: 8 put: (RunArray runs: #(12) values: #(#())). 
self referenceDictionary at: 9 put: (Color r: 1 g: 0.0 b: 0.0). 
self referenceDictionary at: 10 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 11)); yourself). 
self referenceDictionary at: 11 put: (89@22). 
self referenceDictionary at: 1;; code copy.
	patch := (TextDiffBuilder from: firstText to: secondText) buildPatchSequence.
	self 
		assert: {#insert->secondText. #remove->firstText} asSet 
		equals: patch asSet.