menu
request: titleString initialAnswer: answerString ifAccepted: acceptBlock ifCanceled: cancelBlock
	| answer |
	answer := UIManager default
		request: titleString
		initialAnswer: answerString.
	^ answer 
		ifEmpty: [cancelBlock value]
		ifNotEmpty: [acceptBlock value: answer asSymbol]