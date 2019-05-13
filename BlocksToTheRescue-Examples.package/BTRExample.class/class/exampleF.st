as yet unclassified
exampleF

	#V2;BTRBabylonianModel;1104;Code1;self referenceDictionary at: 1 put: (BTRBabylonianModel new instVarNamed: #code put: (self referenceAt: 2); yourself). 
self referenceDictionary at: 2 put: (Text string: '| foo |
foo := 42.
' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(1 1 3 1 1 1 3 1 2 1 2 1 1 1) values: ((Array new: 14) at: 1 put: (self referenceAt: 4); at: 2 put: (self referenceAt: 7); at: 3 put: (self referenceAt: 10); at: 4 put: (self referenceAt: 7); at: 5 put: (self referenceAt: 4); at: 6 put: (self referenceAt: 7); at: 7 put: (self referenceAt: 13); at: 8 put: (self referenceAt: 7); at: 9 put: (self referenceAt: 16); at: 10 put: (self referenceAt: 7); at: 11 put: (self referenceAt: 18); at: 12 put: (self referenceAt: 21); at: 13 put: (self referenceAt: 7); at: 14 put: (self referenceAt: 23); yourself)). 
self referenceDictionary at: 4 put: ((Array new: 1) at: 1 put: (self referenceAt: 5); yourself). 
self referenceDictionary at: 5 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 6); yourself). 
self referenceDictionary at: 6 put: (Color r: 0.5 g: 0.5 b: 0.5). 
self referenceDictionary at: 7 put: ((Array new: 1) at: 1 put: (self referenceAt: 8); yourself). 
self referenceDictionary at: 8 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 9); yourself). 
self referenceDictionary at: 9 put: (Color r: 0.0 g: 0.0 b: 0.0). 
self referenceDictionary at: 10 put: ((Array new: 1) at: 1 put: (self referenceAt: 11); yourself). 
self referenceDictionary at: 11 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 12); yourself). 
self referenceDictionary at: 12 put: (Color r: 0.42 g: 0.42 b: 0.42). 
self referenceDictionary at: 13 put: ((Array new: 1) at: 1 put: (self referenceAt: 14); yourself). 
self referenceDictionary at: 14 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 15); yourself). 
self referenceDictionary at: 15 put: (Color r: 0.42 g: 0.42 b: 0.42). 
self referenceDictionary at: 16 put: ((Array new: 1) at: 1 put: (self referenceAt: 17); yourself). 
self referenceDictionary at: 17 put: (TextEmphasis basicNew instVarAt: 1 put: 1; instVarAt: 2 put: true; yourself). 
self referenceDictionary at: 18 put: ((Array new: 1) at: 1 put: (self referenceAt: 19); yourself). 
self referenceDictionary at: 19 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 20); yourself). 
self referenceDictionary at: 20 put: (Color r: 0.5 g: 0.0 b: 0.0). 
self referenceDictionary at: 21 put: ((Array new: 1) at: 1 put: (self referenceAt: 22); yourself). 
self referenceDictionary at: 22 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 9); yourself). 
self referenceDictionary at: 23 put: ((Array new: 2) at: 1 put: (self referenceAt: 8); at: 2 put: (self referenceAt: 24); yourself). 
self referenceDictionary at: 24 put: (BTRBlockAttribute basicNew instVarNamed: #blockModel put: (self referenceAt: 25); yourself). 
self referenceDictionary at: 25 put: (BTRProbe basicNew instVarNamed: #code put: (self referenceAt: 26); yourself). 
self referenceDictionary at: 26 put: (Text string: 'foo * 2' runs: (self referenceAt: 27)). 
self referenceDictionary at: 27 put: (RunArray runs: #(3 1 1 1 1) values: ((Array new: 5) at: 1 put: (self referenceAt: 28); at: 2 put: (self referenceAt: 30); at: 3 put: (self referenceAt: 32); at: 4 put: (self referenceAt: 30); at: 5 put: (self referenceAt: 35); yourself)). 
self referenceDictionary at: 28 put: ((Array new: 1) at: 1 put: (self referenceAt: 29); yourself). 
self referenceDictionary at: 29 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 15); yourself). 
self referenceDictionary at: 30 put: ((Array new: 1) at: 1 put: (self referenceAt: 31); yourself). 
self referenceDictionary at: 31 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 9); yourself). 
self referenceDictionary at: 32 put: ((Array new: 1) at: 1 put: (self referenceAt: 33); yourself). 
self referenceDictionary at: 33 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 34); yourself). 
self referenceDictionary at: 34 put: (Color r: 0.0 g: 0.0 b: 0.5). 
self referenceDictionary at: 35 put: ((Array new: 1) at: 1 put: (self referenceAt: 36); yourself). 
self referenceDictionary at: 36 put: (TextColor basicNew instVarAt: 1 put: (self referenceAt: 20); yourself). 
self referenceDictionary at: 1;
