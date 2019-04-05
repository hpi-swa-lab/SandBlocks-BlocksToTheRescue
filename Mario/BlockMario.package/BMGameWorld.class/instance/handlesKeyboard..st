event handling
handlesKeyboard: evt

	^ evt isKeyDown or: [evt isKeyUp]