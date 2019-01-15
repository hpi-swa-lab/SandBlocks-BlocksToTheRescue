as yet unclassified
generateStatementBlock: statement connectedTo: aGPBlockView

	^ (statement isKindOf: MessageNode)
		ifTrue: [self generateMessageBlock: statement connectedTo: aGPBlockView]
		ifFalse: [self blockFor: statement connectedTo: aGPBlockView]