execution
activateNode: anEndNode with: anArray

	super activateNode: anEndNode with: anArray.
	(self semaphores at: anEndNode) signal.	
	self runningNodes remove: anEndNode.
	self runningNodes ifEmpty: [self terminate].