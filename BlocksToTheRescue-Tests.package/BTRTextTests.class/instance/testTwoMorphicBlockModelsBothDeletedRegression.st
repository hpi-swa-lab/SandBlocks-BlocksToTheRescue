testing
testTwoMorphicBlockModelsBothDeletedRegression

	| textMorph |
	textMorph := #V2;BTRWrapperBlock;1926;Wrapper1;BTRCodeModel;190A;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 27);
 yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1 1) values: ((Array new: 2) at: 1 put: (self referenceAt: 4); at: 2 put: (self referenceAt: 16); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRWrapperBlock basicNew instVarNamed: #bounds put: (self referenceAt: 7);
instVarNamed: #submorphs put: Array empty;
 instVarNamed: #fullBounds put: nil;
 instVarNamed: #color put: (self referenceAt: 8);
 instVarNamed: #extension put: (self referenceAt: 9);
 instVarNamed: #wrappedBlock put: nil;
 yourself). 
self referenceDictionary at: 7 put: (5@2 corner: 55@42). 
self referenceDictionary at: 8 put: (Color transparent). 
self referenceDictionary at: 9 put: (MorphExtension basicNew instVarNamed: #locked put: false;
 instVarNamed: #visible put: true;
 instVarNamed: #sticky put: false;
 instVarNamed: #balloonText put: nil;
 instVarNamed: #balloonTextSelector put: nil;
 instVarNamed: #externalName put: nil;
 instVarNamed: #isPartsDonor put: false;
 instVarNamed: #actorState put: nil;
 instVarNamed: #player put: nil;
 instVarNamed: #eventHandler put: nil;
 instVarNamed: #otherProperties put: (self referenceAt: 10);
 yourself). 
self referenceDictionary at: 10 put: ((IdentityDictionary new) add: (#layoutProperties -> (self referenceAt: 11)); add: (#signalConnections -> (self referenceAt: 12)); add: (#layoutPolicy -> (self referenceAt: 13)); add: (#animations -> (self referenceAt: 14)); add: (#borderStyle -> (self referenceAt: 15)); add: (#BTRBlockMoel -> (self referenceAt: 6)); yourself). 
self referenceDictionary at: 11 put: (TableLayoutProperties basicNew instVarNamed: #hResizing put: #shrinkWrap;
 instVarNamed: #vResizing put: #shrinkWrap;
 instVarNamed: #disableLayout put: false;
 instVarNamed: #cellInset put: 0;
 instVarNamed: #cellPositioning put: #center;
 instVarNamed: #cellSpacing put: #none;
 instVarNamed: #layoutInset put: 2;
 instVarNamed: #listCentering put: #topLeft;
 instVarNamed: #listDirection put: #topToBottom;
 instVarNamed: #listSpacing put: #none;
 instVarNamed: #reverseTableCells put: false;
 instVarNamed: #rubberBandCells put: false;
 instVarNamed: #wrapCentering put: #topLeft;
 instVarNamed: #wrapDirection put: #none;
 instVarNamed: #minCellSize put: 0;
 instVarNamed: #maxCellSize put: 1073741823;
 yourself). 
self referenceDictionary at: 12 put: ((Dictionary new)). 
self referenceDictionary at: 13 put: (TableLayout basicNew instVarNamed: #properties put: nil;
 instVarNamed: #minExtentCache put: nil;
 yourself). 
self referenceDictionary at: 14 put: ((OrderedCollection new)). 
self referenceDictionary at: 15 put: (InsetBorder basicNew instVarNamed: #baseColor put: (self referenceAt: 8);
 instVarNamed: #color put: (self referenceAt: 8);
 instVarNamed: #width put: 5;
 yourself). 
self referenceDictionary at: 16 put: ((Array new: 1) at: 1 put: (self referenceAt: 17); yourself). 
self referenceDictionary at: 17 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 18); yourself). 
self referenceDictionary at: 18 put: (BTRWrapperBlock basicNew instVarNamed: #bounds put: (self referenceAt: 19);
instVarNamed: #submorphs put: Array empty;
 instVarNamed: #fullBounds put: nil;
 instVarNamed: #color put: (self referenceAt: 8);
 instVarNamed: #extension put: (self referenceAt: 20);
 instVarNamed: #wrappedBlock put: nil;
 yourself). 
self referenceDictionary at: 19 put: (59@2 corner: 109@42). 
self referenceDictionary at: 20 put: (MorphExtension basicNew instVarNamed: #locked put: false;
 instVarNamed: #visible put: true;
 instVarNamed: #sticky put: false;
 instVarNamed: #balloonText put: nil;
 instVarNamed: #balloonTextSelector put: nil;
 instVarNamed: #externalName put: nil;
 instVarNamed: #isPartsDonor put: false;
 instVarNamed: #actorState put: nil;
 instVarNamed: #player put: nil;
 instVarNamed: #eventHandler put: nil;
 instVarNamed: #otherProperties put: (self referenceAt: 21);
 yourself). 
self referenceDictionary at: 21 put: ((IdentityDictionary new) add: (#layoutProperties -> (self referenceAt: 22)); add: (#signalConnections -> (self referenceAt: 23)); add: (#layoutPolicy -> (self referenceAt: 24)); add: (#animations -> (self referenceAt: 25)); add: (#borderStyle -> (self referenceAt: 26)); add: (#BTRBlockMoel -> (self referenceAt: 18)); yourself). 
self referenceDictionary at: 22 put: (TableLayoutProperties basicNew instVarNamed: #hResizing put: #shrinkWrap;
 instVarNamed: #vResizing put: #shrinkWrap;
 instVarNamed: #disableLayout put: false;
 instVarNamed: #cellInset put: 0;
 instVarNamed: #cellPositioning put: #center;
 instVarNamed: #cellSpacing put: #none;
 instVarNamed: #layoutInset put: 2;
 instVarNamed: #listCentering put: #topLeft;
 instVarNamed: #listDirection put: #topToBottom;
 instVarNamed: #listSpacing put: #none;
 instVarNamed: #reverseTableCells put: false;
 instVarNamed: #rubberBandCells put: false;
 instVarNamed: #wrapCentering put: #topLeft;
 instVarNamed: #wrapDirection put: #none;
 instVarNamed: #minCellSize put: 0;
 instVarNamed: #maxCellSize put: 1073741823;
 yourself). 
self referenceDictionary at: 23 put: ((Dictionary new)). 
self referenceDictionary at: 24 put: (TableLayout basicNew instVarNamed: #properties put: nil;
 instVarNamed: #minExtentCache put: nil;
 yourself). 
self referenceDictionary at: 25 put: ((OrderedCollection new)). 
self referenceDictionary at: 26 put: (InsetBorder basicNew instVarNamed: #baseColor put: (self referenceAt: 8);
 instVarNamed: #color put: (self referenceAt: 8);
 instVarNamed: #width put: 5;
 yourself). 
self referenceDictionary at: 27 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 28)); yourself). 
self referenceDictionary at: 28 put: (124@49). 
self referenceDictionary at: 1;; inlineView textMorph.
	textMorph editor selectAt: 2.
	textMorph keyStroke: (KeyboardEvent new 
		keyValue: Character backspace asInteger;
		instVarNamed: #buttons put: 0;
		yourself).
	self 
		assert: #V2;BTRWrapperBlock;E35;Wrapper1;BTRCodeModel;E1A;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarNamed: #dependents put: nil;
 instVarNamed: #contents put: '';
 instVarNamed: #currentCompiledMethod put: nil;
 instVarNamed: #contentsSymbol put: #source;
 instVarNamed: #multiWindowState put: nil;
 instVarNamed: #code put: (self referenceAt: 2);
 instVarNamed: #viewData put: (self referenceAt: 16);
 yourself). 
self referenceDictionary at: 2 put: (Text string: '' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1) values: ((Array new: 1) at: 1 put: (self referenceAt: 4); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (BTRWrapperBlock basicNew instVarNamed: #bounds put: (self referenceAt: 7);
instVarNamed: #submorphs put: Array empty;
 instVarNamed: #fullBounds put: nil;
 instVarNamed: #color put: (self referenceAt: 8);
 instVarNamed: #extension put: (self referenceAt: 9);
 instVarNamed: #wrappedBlock put: nil;
 yourself). 
self referenceDictionary at: 7 put: (5@2 corner: 55@42). 
self referenceDictionary at: 8 put: (Color transparent). 
self referenceDictionary at: 9 put: (MorphExtension basicNew instVarNamed: #locked put: false;
 instVarNamed: #visible put: true;
 instVarNamed: #sticky put: false;
 instVarNamed: #balloonText put: nil;
 instVarNamed: #balloonTextSelector put: nil;
 instVarNamed: #externalName put: nil;
 instVarNamed: #isPartsDonor put: false;
 instVarNamed: #actorState put: nil;
 instVarNamed: #player put: nil;
 instVarNamed: #eventHandler put: nil;
 instVarNamed: #otherProperties put: (self referenceAt: 10);
 yourself). 
self referenceDictionary at: 10 put: ((IdentityDictionary new) add: (#layoutProperties -> (self referenceAt: 11)); add: (#signalConnections -> (self referenceAt: 12)); add: (#layoutPolicy -> (self referenceAt: 13)); add: (#animations -> (self referenceAt: 14)); add: (#borderStyle -> (self referenceAt: 15)); add: (#BTRBlockMoel -> (self referenceAt: 6)); yourself). 
self referenceDictionary at: 11 put: (TableLayoutProperties basicNew instVarNamed: #hResizing put: #shrinkWrap;
 instVarNamed: #vResizing put: #shrinkWrap;
 instVarNamed: #disableLayout put: false;
 instVarNamed: #cellInset put: 0;
 instVarNamed: #cellPositioning put: #center;
 instVarNamed: #cellSpacing put: #none;
 instVarNamed: #layoutInset put: 2;
 instVarNamed: #listCentering put: #topLeft;
 instVarNamed: #listDirection put: #topToBottom;
 instVarNamed: #listSpacing put: #none;
 instVarNamed: #reverseTableCells put: false;
 instVarNamed: #rubberBandCells put: false;
 instVarNamed: #wrapCentering put: #topLeft;
 instVarNamed: #wrapDirection put: #none;
 instVarNamed: #minCellSize put: 0;
 instVarNamed: #maxCellSize put: 1073741823;
 yourself). 
self referenceDictionary at: 12 put: ((Dictionary new)). 
self referenceDictionary at: 13 put: (TableLayout basicNew instVarNamed: #properties put: nil;
 instVarNamed: #minExtentCache put: nil;
 yourself). 
self referenceDictionary at: 14 put: ((OrderedCollection new)). 
self referenceDictionary at: 15 put: (InsetBorder basicNew instVarNamed: #baseColor put: (self referenceAt: 8);
 instVarNamed: #color put: (self referenceAt: 8);
 instVarNamed: #width put: 5;
 yourself). 
self referenceDictionary at: 16 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 17)); yourself). 
self referenceDictionary at: 17 put: (124@49). 
self referenceDictionary at: 1;;code
		equals: textMorph text.
	