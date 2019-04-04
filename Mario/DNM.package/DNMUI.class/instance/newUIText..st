access
newUIText: aText
	|newUIText|	
	newUIText := TextMorph new
		contents: (Text string: aText attribute: TextEmphasis italic);
		beAllFont: (StrikeFont familyName: #BitstreamVeraSans pointSize: 42);
		color: Color white;
		contents: aText;
		yourself.
	self addMorph: newUIText.
	^newUIText