as yet unclassified
initialize 
	
	super initialize.
	self
		color: Color black;
		extent: self gameWorldSize;
		sIParticals: OrderedCollection new;
		spawnPlayer;
		openInWorld.