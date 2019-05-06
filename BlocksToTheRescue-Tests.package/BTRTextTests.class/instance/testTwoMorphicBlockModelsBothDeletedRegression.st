testing
testTwoMorphicBlockModelsBothDeletedRegression

	| textMorph |
	textMorph := #V2;BTRWrapperBlock;1509;Wrapper1;BTRCodeModel;14ED;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 27); yourself). 
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
self referenceDictionary at: 9 put: (MorphExtension basicNew instVarAt: 1 put: false; instVarAt: 2 put: true; instVarAt: 3 put: false; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: nil; instVarAt: 7 put: false; instVarAt: 8 put: nil; instVarAt: 9 put: nil; instVarAt: 10 put: nil; instVarAt: 11 put: (self referenceAt: 10); yourself). 
self referenceDictionary at: 10 put: ((IdentityDictionary new) add: (#BTRBlockMoel -> (self referenceAt: 6)); add: (#layoutPolicy -> (self referenceAt: 11)); add: (#signalConnections -> (self referenceAt: 12)); add: (#animations -> (self referenceAt: 13)); add: (#borderStyle -> (self referenceAt: 14)); add: (#layoutProperties -> (self referenceAt: 15)); yourself). 
self referenceDictionary at: 11 put: (TableLayout basicNew instVarAt: 1 put: nil; instVarAt: 2 put: nil; yourself). 
self referenceDictionary at: 12 put: ((Dictionary new)). 
self referenceDictionary at: 13 put: ((OrderedCollection new)). 
self referenceDictionary at: 14 put: (InsetBorder basicNew instVarAt: 1 put: (self referenceAt: 8); instVarAt: 2 put: (self referenceAt: 8); instVarAt: 3 put: 5; yourself). 
self referenceDictionary at: 15 put: (TableLayoutProperties basicNew instVarAt: 1 put: #shrinkWrap; instVarAt: 2 put: #shrinkWrap; instVarAt: 3 put: false; instVarAt: 4 put: 0; instVarAt: 5 put: #center; instVarAt: 6 put: #none; instVarAt: 7 put: 2; instVarAt: 8 put: #topLeft; instVarAt: 9 put: #topToBottom; instVarAt: 10 put: #none; instVarAt: 11 put: false; instVarAt: 12 put: false; instVarAt: 13 put: #topLeft; instVarAt: 14 put: #none; instVarAt: 15 put: 0; instVarAt: 16 put: 1073741823; yourself). 
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
self referenceDictionary at: 20 put: (MorphExtension basicNew instVarAt: 1 put: false; instVarAt: 2 put: true; instVarAt: 3 put: false; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: nil; instVarAt: 7 put: false; instVarAt: 8 put: nil; instVarAt: 9 put: nil; instVarAt: 10 put: nil; instVarAt: 11 put: (self referenceAt: 21); yourself). 
self referenceDictionary at: 21 put: ((IdentityDictionary new) add: (#BTRBlockMoel -> (self referenceAt: 18)); add: (#layoutPolicy -> (self referenceAt: 22)); add: (#signalConnections -> (self referenceAt: 23)); add: (#animations -> (self referenceAt: 24)); add: (#borderStyle -> (self referenceAt: 25)); add: (#layoutProperties -> (self referenceAt: 26)); yourself). 
self referenceDictionary at: 22 put: (TableLayout basicNew instVarAt: 1 put: nil; instVarAt: 2 put: nil; yourself). 
self referenceDictionary at: 23 put: ((Dictionary new)). 
self referenceDictionary at: 24 put: ((OrderedCollection new)). 
self referenceDictionary at: 25 put: (InsetBorder basicNew instVarAt: 1 put: (self referenceAt: 8); instVarAt: 2 put: (self referenceAt: 8); instVarAt: 3 put: 5; yourself). 
self referenceDictionary at: 26 put: (TableLayoutProperties basicNew instVarAt: 1 put: #shrinkWrap; instVarAt: 2 put: #shrinkWrap; instVarAt: 3 put: false; instVarAt: 4 put: 0; instVarAt: 5 put: #center; instVarAt: 6 put: #none; instVarAt: 7 put: 2; instVarAt: 8 put: #topLeft; instVarAt: 9 put: #topToBottom; instVarAt: 10 put: #none; instVarAt: 11 put: false; instVarAt: 12 put: false; instVarAt: 13 put: #topLeft; instVarAt: 14 put: #none; instVarAt: 15 put: 0; instVarAt: 16 put: 1073741823; yourself). 
self referenceDictionary at: 27 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 28)); yourself). 
self referenceDictionary at: 28 put: (124@49). 
self referenceDictionary at: 1;; inlineView textMorph.
	textMorph editor selectAt: 2.
	textMorph keyStroke: (KeyboardEvent new 
		keyValue: Character backspace asInteger;
		instVarNamed: #buttons put: 0;
		yourself).
	self 
		assert: #V2;BTRWrapperBlock;BF0;Wrapper1;BTRCodeModel;BD5;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 16); yourself). 
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
self referenceDictionary at: 9 put: (MorphExtension basicNew instVarAt: 1 put: false; instVarAt: 2 put: true; instVarAt: 3 put: false; instVarAt: 4 put: nil; instVarAt: 5 put: nil; instVarAt: 6 put: nil; instVarAt: 7 put: false; instVarAt: 8 put: nil; instVarAt: 9 put: nil; instVarAt: 10 put: nil; instVarAt: 11 put: (self referenceAt: 10); yourself). 
self referenceDictionary at: 10 put: ((IdentityDictionary new) add: (#signalConnections -> (self referenceAt: 11)); add: (#BTRBlockMoel -> (self referenceAt: 6)); add: (#layoutPolicy -> (self referenceAt: 12)); add: (#animations -> (self referenceAt: 13)); add: (#borderStyle -> (self referenceAt: 14)); add: (#layoutProperties -> (self referenceAt: 15)); yourself). 
self referenceDictionary at: 11 put: ((Dictionary new)). 
self referenceDictionary at: 12 put: (TableLayout basicNew instVarAt: 1 put: nil; instVarAt: 2 put: nil; yourself). 
self referenceDictionary at: 13 put: ((OrderedCollection new)). 
self referenceDictionary at: 14 put: (InsetBorder basicNew instVarAt: 1 put: (self referenceAt: 8); instVarAt: 2 put: (self referenceAt: 8); instVarAt: 3 put: 5; yourself). 
self referenceDictionary at: 15 put: (TableLayoutProperties basicNew instVarAt: 1 put: #shrinkWrap; instVarAt: 2 put: #shrinkWrap; instVarAt: 3 put: false; instVarAt: 4 put: 0; instVarAt: 5 put: #center; instVarAt: 6 put: #none; instVarAt: 7 put: 2; instVarAt: 8 put: #topLeft; instVarAt: 9 put: #topToBottom; instVarAt: 10 put: #none; instVarAt: 11 put: false; instVarAt: 12 put: false; instVarAt: 13 put: #topLeft; instVarAt: 14 put: #none; instVarAt: 15 put: 0; instVarAt: 16 put: 1073741823; yourself). 
self referenceDictionary at: 16 put: ((Dictionary new) add: (#inlineViewProportions -> (self referenceAt: 17)); yourself). 
self referenceDictionary at: 17 put: (124@49). 
self referenceDictionary at: 1;;code
		equals: textMorph text.
	