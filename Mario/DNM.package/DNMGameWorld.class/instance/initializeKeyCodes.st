initialization
initializeKeyCodes
	|keycodeConverter|
	self keyboardListener: DNMKeyboardListener new.
	keycodeConverter := keyboardListener keycodeConverter.
	self keyDictionary: (Dictionary new
		add: (keycodeConverter keyValueFor: #g)->[mario changeToState: #marioGodState];
		yourself).