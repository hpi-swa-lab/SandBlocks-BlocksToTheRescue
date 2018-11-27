building
populateTiles

	self charactersWithIndexDo: 
			[:character :x :y |  self 
				currentPosition: x @ y;
				populateCurrentPositionWith: character].