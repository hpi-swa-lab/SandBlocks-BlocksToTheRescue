event filtering
filterEvent: evt for: aMorph

	(evt isKeyboard and: [self containsPoint: evt position])
		ifTrue: [evt isKeystroke 
				ifTrue: [self handleKeyboardEvent: evt]].
				
	^ evt