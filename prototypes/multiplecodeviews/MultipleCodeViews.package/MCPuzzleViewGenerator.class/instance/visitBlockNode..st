as yet unclassified
visitBlockNode: aBlockNode

	^ (aBlockNode statements reversed
		inject: nil
		into: [:result :statement |
			PPPieceConnector 
				newWith: (self generateStatementBlock: statement)
				following: result]) openInHand