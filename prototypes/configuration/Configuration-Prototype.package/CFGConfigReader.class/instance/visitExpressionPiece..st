visiting
visitExpressionPiece: aCFGExpressionPiece

	^ self options
		ifEmpty: ['(', (self visit: aCFGExpressionPiece leftElement), Character space,
					aCFGExpressionPiece code, Character space,
					(self visit: aCFGExpressionPiece rightElement), ')']
		ifNotEmpty: [nil]