as yet unclassified
changeColorOf: aMorph to: aColor after: anInteger
	
	[(Duration seconds: anInteger) wait.
	aMorph color: aColor] fork.