as yet unclassified
visitBlockNode: aBlockNode

	^ (aBlockNode statements reversed
		inject: nil
		into: [:result :statement |
			self generateStatementBlock: statement connectedTo: result]).