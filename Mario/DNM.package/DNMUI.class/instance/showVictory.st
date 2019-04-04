access
showVictory
	(gameResultText) ifNil: [gameResultText := self newUIText: (DNMGameTexts singleton textFor: #victory)].