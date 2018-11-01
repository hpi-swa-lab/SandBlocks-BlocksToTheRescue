as yet unclassified
step
	
	super step.
	self sIParticals do: [ :partical | partical position: (partical position - (0 @ 10))].