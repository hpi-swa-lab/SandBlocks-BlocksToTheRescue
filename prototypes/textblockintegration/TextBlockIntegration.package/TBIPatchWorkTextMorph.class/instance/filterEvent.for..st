event filtering
filterEvent: evt for: aMorph

	evt isKeyboard 
		ifTrue: [evt isKeystroke 
				ifTrue: [self handleKeyboardEvent: evt]].
				
	^ evt