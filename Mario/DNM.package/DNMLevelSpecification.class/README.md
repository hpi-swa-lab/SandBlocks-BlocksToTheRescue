A DNMLevelSpecification is a long list, which can actually describes a level. For a detialed description see the comments below.

Instance Variables
	enemies:		<Collection>
	grounds:		<Collection>
	items:		<Collection>
	maxPlatformLength:		<Integer>
	platformDistance:		<Integer>
	platforms:		<Collection>
	spawnOnFloorPercentage:		<Integer>
	spawnOnPlatformPercentage:		<Integer>
	width:		<Integer>

enemies
	- In this collection of symbols you can define which enemies should spawn in this level. If one appears in the collection more often it will have a higher change to be spawned.

grounds
	- In this collection of symbols you can define which ground blocks should spawn in this level. If one appears in the collection more often it will have a higher change to be spawned.
	
items
	- In this collection of symbols you can define which items should spawn in this level. If one appears in the collection more often it will have a higher change to be spawned.

maxPlatformLength
	- xxxxx

platformDistance
	- xxxxx

platforms
	- In this collection of symbols you can define which platforms should spawn in this level. If one appears in the collection more often it will have a higher change to be spawned.

spawnOnFloorPercentage
	- This parameter defines with which probability on a ground block an element will be spwaned

spawnOnPlatformPercentage
	- This parameter defines with which probability on a non-ground block an element will be spwaned

width
	- This is the length of the level