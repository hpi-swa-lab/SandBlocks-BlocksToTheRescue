as yet unclassified
addNewThreadWithExecutee: anExecutee onPromise: aPromise

	self processes add: [[anExecutee execute. aPromise resolveWith: nil] 
							on: Error 
							do: [self errorCount: self errorCount + 1.
								(self firstBlocks size - self errorCount - self perl conditionNumber)  < 0
									ifTrue: [self errorContext execute. 
											self killAllExceptMe.
											self executeNextBlock]
									ifFalse: [Processor activeProcess terminate]]] fork.