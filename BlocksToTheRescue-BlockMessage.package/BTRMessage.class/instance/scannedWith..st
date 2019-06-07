interface-views
scannedWith: aScanner
	
	"We have to make sure, that we transform the source, the Parser will see, into something it is able to read. Therfore, we write a $§ for each selectorPart as a placeholder and especially our arguments into the source. The format looks like oldSourcePart1 SOH§arg1§arg2... oldSourcePart2"
	
	| oldSource newSource |
	oldSource := aScanner source.
	
	newSource := ReadStream on:
		((oldSource contents copyFrom: 1 to: oldSource position),
		self selectorWithArgs,
		(oldSource contents copyFrom: oldSource position + 1 to: oldSource size)).
	newSource position: oldSource position.
		
	aScanner source: newSource.