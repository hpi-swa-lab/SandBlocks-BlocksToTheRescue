as yet unclassified
initialize

	self resourceLoader: GMImageLoader new.
	self resourceLoader loadAllResourcesFromDrive: self folder.
	self soundPlayer: GMSoundLoader new.
	self soundPlayer loadAllResourcesFromDrive: self folder.