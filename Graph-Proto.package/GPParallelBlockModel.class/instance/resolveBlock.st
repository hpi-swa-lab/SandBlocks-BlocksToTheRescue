as yet unclassified
resolveBlock

	 ^  [self finishedProcessesCount: self finishedProcessesCount + 1.
		(self perl conditionBlock value: self finishedProcessesCount)
			ifTrue: [	self killAllExceptMe.
					self executeNextBlock]]