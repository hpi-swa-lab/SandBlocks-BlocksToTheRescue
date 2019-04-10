execution
waitForAll: aCollection

	aCollection do: [:each | (self semaphores at: each) wait].