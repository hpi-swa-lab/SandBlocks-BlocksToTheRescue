accessing
firstTextPatch

	^ self patches detect: [:each | each type = #text]