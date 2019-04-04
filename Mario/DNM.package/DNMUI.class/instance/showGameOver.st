access
showGameOver
	(gameResultText) ifNil: [gameResultText := self newUIText: (DNMGameTexts singleton textFor: #gameOver)].