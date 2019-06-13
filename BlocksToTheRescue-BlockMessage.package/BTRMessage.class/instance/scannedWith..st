interface-views
scannedWith: aScanner
	
	"We have to make sure, that we transform the source, the Parser will see, into something it is able to read. Therfore, we write a $§ for each selectorPart as a placeholder and especially our arguments into the source. The format looks like oldSourcePart1 SOH§arg1§arg2... oldSourcePart2"
	
	| oldSource newSource position |
	self isUnary ifTrue: [^self].
	oldSource := aScanner source.
	position := oldSource position.
	
	"If the stream is at the end, which means that we called next on it one time less and instead appended a DoItCharcter manually"
	oldSource atEnd ifTrue: [position := position + 1].
	
	newSource := ReadStream on:
		((oldSource collection copyFrom: 1 to: position - 1),
		self selectorWithArgs,
		(oldSource collection copyFrom: position to: oldSource size)).
	newSource position: position.
	
	"We already overstepped the aheadChar, so we have to set it back. But due to our format, we know that we expect a §"
	aScanner aheadChar: BTRMessage blockSeperatorCharacter.
	
	aScanner source: newSource.