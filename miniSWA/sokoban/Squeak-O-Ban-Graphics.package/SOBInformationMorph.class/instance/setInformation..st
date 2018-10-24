initialize-release
setInformation: aLevelInformation

	self title contents: aLevelInformation title.
	self score contents: aLevelInformation score asString.
	self moves contents: aLevelInformation moves asString.
	aLevelInformation addDependent: self.