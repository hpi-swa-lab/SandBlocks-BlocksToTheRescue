execution
armNode: aNode

	[self waitForAll: (self graph incoming: aNode).
		self executeNode: aNode. 
		self runningNodes remove: aNode. "this line might brick conditional return !"
	] fork.