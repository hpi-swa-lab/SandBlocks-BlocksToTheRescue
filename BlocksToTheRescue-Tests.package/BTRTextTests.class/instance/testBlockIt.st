testing
testBlockIt

	| editor |
	editor := #V2;BTRWrapperBlock;681;Wrapper1;BTRCodeModel;666;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 10);
 yourself). 
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
self referenceDictionary at: 1;;inlineView textMorph editor.
	editor
		selectAll;
		insertBlock.
	self 
		assert: #V2;BTRWrapperBlock;83;Wrapper1;BTRColorModel;68;Constant2;UndefinedObject;5;1;nil;UndefinedObject;5;1;nil;Color;24;1;(Color r: 0.767 g: 0.767 b: 0.767);;;
		equals: editor selection embeddedBlockModels anyOne