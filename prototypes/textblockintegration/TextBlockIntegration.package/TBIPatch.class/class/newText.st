instance creation
newText

	^ self new
		morph: (TextMorph new wrapFlag: false);
		type: #text;
		yourself