instance creation
newForWorkspace: aPluggableTextMorphPlus

	^ self new
		parseAMethod: false;
		view: aPluggableTextMorphPlus;
		yourself