create level
createNewRandomLevel
	"Create a new, randomized level according to the level specification."
	self 
		levelElements: OrderedCollection new;
		createBasicLevel;
		createPlatforms.
