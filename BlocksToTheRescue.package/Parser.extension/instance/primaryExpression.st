*BlocksToTheRescue
primaryExpression 
	
	hereType == #word 
		ifTrue: 
			[parseNode := self variable.
			(parseNode isUndefTemp and: [self interactive])
				ifTrue: [self queryUndefined].
			parseNode nowHasRef.
			^ true].
	hereType == #leftBracket
		ifTrue: 
			[self advance.
			self blockExpression.
			^true].
	hereType == #leftBrace
		ifTrue: 
			[self braceExpression.
			^true].
	hereType == #leftParenthesis
		ifTrue: 
			[self advance.
			self expression ifFalse: [^self expected: 'expression'].
			(self match: #rightParenthesis)
				ifFalse: [^self expected: 'right parenthesis'].
			^true].
	(hereType == #string or: [hereType == #number or: [hereType == #literal or: [hereType == #character]]])
		ifTrue: 
			[parseNode := encoder encodeLiteral: self advance.
			^true].
	(hereType == #binary and: [BTRBlockAttribute isBlockCharacter: here])
		ifTrue:
			[| textAttributes |
			textAttributes := source contents asText attributesAt: hereMark.	"character has always a length of 1"
			textAttributes detect: [:each | each anchoredMorph notNil] 
				ifFound: [:blockAttribute | 
							self advance.
							parseNode := encoder encodeLiteral: blockAttribute anchoredMorph value. 
						 	 ^true]
				ifNone: [^false]].
	(here == #- and: [tokenType == #number and: [1 + hereEnd = mark]])
		ifTrue: 
			[self advance.
			parseNode := encoder encodeLiteral: self advance negated.
			^true].
	^false