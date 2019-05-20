*BlocksToTheRescue-Core
directYellowButtonActivity: evt 

	(self buildYellowButtonMenu: ActiveHand)
		addTitle: self externalName
		icon: (self iconOrThumbnailOfSize: (Preferences tinyDisplay ifTrue: [16] ifFalse: [28]));
		popUpInWorld: self currentWorld.