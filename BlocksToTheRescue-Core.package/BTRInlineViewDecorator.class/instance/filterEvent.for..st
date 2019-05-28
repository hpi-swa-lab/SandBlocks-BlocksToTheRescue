event handling
filterEvent: anEvent for: aMorphOrNil
	
	(self containsPoint: anEvent position) ifTrue: [
		anEvent isMouseDown ifTrue: [
			anEvent yellowButtonPressed ifTrue: [
				self directYellowButtonActivity: anEvent.
				anEvent ignore]]].
	^ anEvent