accessing
allEntities

	^ Generator on: [:g | self entityManagers
		do: [:manager | g nextPutAll: manager entities]].