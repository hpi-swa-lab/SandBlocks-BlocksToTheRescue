instance creation
newText: aTextMorph

	^ self new
		morph: aTextMorph;
		type: #text;
		yourself