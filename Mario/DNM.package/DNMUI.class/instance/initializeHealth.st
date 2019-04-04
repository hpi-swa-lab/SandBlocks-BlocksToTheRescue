initialization
initializeHealth
	|healthBarWidth|
	healthBarWidth := 200.
	healthBar := ProgressBarMorph new
		setBalloonText: (DNMGameTexts singleton textFor: #healthDescription); 
		progressColor: Color red;
		color: Color white;
		width: healthBarWidth;
		yourself.
	self addMorph: healthBar.
	