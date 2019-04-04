instance-creation
rockyPlatform
	|image|
	image := {#rockyPlatform1 . #rockyPlatform2 } atRandom.
	^DNMCollidingGameElement new
		setImage: image;
		yourself