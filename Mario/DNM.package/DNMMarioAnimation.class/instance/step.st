stepping and presenter
step
	(owner isMovingRight) 
		ifTrue: 
			[(owner isMovingVertically) ifFalse: [self changeToRunRight] ifTrue: [self changeToJumpRight]].
	(owner isMovingLeft) 
		ifTrue: 
			[(owner isMovingVertically) ifFalse: [self changeToRunLeft] ifTrue: [self changeToJumpLeft]].
	((owner isMovingRight not) and: (owner isMovingLeft not)) 
		ifTrue: 
			[(owner isMovingVertically) ifFalse: [self changeToStandRight] ifTrue: [self changeToJumpRight]].
	