as yet unclassified
testPaddlePositioning
	| positions lastPosition |
	lastPosition := 0.5.

	positions := {0@0. 1@1. 0.5@0.5} asOrderedCollection reversed.
	self paddleEntities do: [:paddle | paddle positionResolver: [positions removeLast]].
	
	[positions notEmpty] whileTrue: [
		self gameField tick: 10.
		self assert: [self paddleEntities
			allSatisfy: [:entity | entity position x ~= lastPosition]]. 
		lastPosition := self paddleEntities first position x].