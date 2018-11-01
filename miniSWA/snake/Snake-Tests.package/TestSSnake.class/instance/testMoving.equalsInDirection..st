as yet unclassified
testMoving: aBlock equalsInDirection: aPoint

	| oldPosition |
	aBlock value: self snake.
	self assert: self snake direction equals: aPoint. 
	
	oldPosition := self snakeHeadPosition.
	self snake moveClippedTo: self worldSize.
	self assert: self snakeHeadPosition equals: oldPosition + aPoint.