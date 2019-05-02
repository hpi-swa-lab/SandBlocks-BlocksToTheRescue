utils
createDownStrokeUpKeyboardEventsFor: aDictionary

	| protoEvent |
	protoEvent := KeyboardEvent new.
	aDictionary
		at: #timeStamp ifAbsentPut: Time eventMillisecondClock;
		at: #source ifAbsentPut: ActiveHand;
		at: #buttons ifAbsentPut: 0;
		at: #position ifAbsentPut: nil;
		at: #wasHandled ifAbsentPut: false;
		at: #wasIgnored ifAbsentPut: false.
	aDictionary keysAndValuesDo: [:key :value |
		protoEvent instVarNamed: key put: value].

	^ {protoEvent copy
			instVarNamed: #type put: #keyDown;
			yourself.
		protoEvent copy
			instVarNamed: #type put: #keystroke;
			yourself.
		protoEvent copy
			instVarNamed: #type put: #keyUp;
			yourself}