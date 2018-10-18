initialize-release
initializeFrom: entityConfigDict
	
	self initialize.
	self morph: RectangleMorph new.
	self configure: entityConfigDict.