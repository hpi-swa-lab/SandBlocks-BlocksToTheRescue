accessing
puzzleBeginning: aPPPieceConnector

	puzzleBeginning := aPPPieceConnector.
	[PPCodeWalker new visit: aPPPieceConnector]
		on: PPDebugStep
		do: [ :step | self currentStep: step]