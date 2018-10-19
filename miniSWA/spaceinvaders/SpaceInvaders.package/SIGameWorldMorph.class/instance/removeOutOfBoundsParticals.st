as yet unclassified
removeOutOfBoundsParticals

	| sIParticalsTmp |
	sIParticalsTmp := self sIParticals.
	self sIParticals do: [ :partical |
		((self isInBounds: partical topLeft) or: [self isInBounds: partical bottomRight])
			ifFalse: [ sIParticalsTmp remove: partical ]
		].
	
	self sIParticals: sIParticalsTmp.