as yet unclassified
mouseDown: anEvent

	(self prototypes select: [:each | each containsPoint: anEvent position]) anyOne copy openInHand.