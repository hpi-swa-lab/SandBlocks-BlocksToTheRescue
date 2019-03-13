*BlocksToTheRescue
compile: aString classified: aString1 withStamp: aString2 notifying: aRequestor logSource: aBoolean inClass: aClass

	text := Text fromBlockString: aString.
	category := aString1.
	changeStamp := aString2.
	requestor := aRequestor.
	logSource := aBoolean.
	myClass := aClass