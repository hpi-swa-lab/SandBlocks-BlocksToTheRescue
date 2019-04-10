execution
execute

	self graph nodes do: [:each |
		[self waitForAll: (self graph incoming: each).
		self executeNode: each.] fork].
	self waitForTermination.
		