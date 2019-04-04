instance-creation
leafyPlatform
	|image|
	image := {#leafyPlatform1 . #leafyPlatform2} atRandom.
	^DNMCollidingGameElement new
		setImage: image;
		yourself