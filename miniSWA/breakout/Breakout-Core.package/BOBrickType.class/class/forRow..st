initialize-release
forRow: anInteger

	^ self new
		initializeFor: (self colorForRow: anInteger);
		yourself