*BlocksToTheRescue-Core
pushConstant: value

	| node |
	node := value == true ifTrue: [constTable at: 2]
		ifFalse: [value == false ifTrue: [constTable at: 3]
		ifFalse: [value == nil ifTrue: [constTable at: 4]
		ifFalse: [value isBTRBlockModel ifTrue: [pc := pc+1. constructor codeBTRBlock: value]
		ifFalse: [constructor codeAnyLiteral: value]]]].
	stack addLast: node