execution
execute

	self graph nodes do: [:each | self armNode: each].
	self waitForTermination.
		