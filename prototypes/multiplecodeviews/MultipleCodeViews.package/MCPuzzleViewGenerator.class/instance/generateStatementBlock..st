as yet unclassified
generateStatementBlock: statement

	^ (statement isKindOf: MessageNode)
		ifTrue: [self generateMessageBlock: statement]
		ifFalse: [self generateGenericBlock: statement]
		