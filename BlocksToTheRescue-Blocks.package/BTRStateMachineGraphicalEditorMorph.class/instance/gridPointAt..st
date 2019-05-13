accessing
gridPointAt: indexPoint

	^ self gridSpec origin
		+ (indexPoint * self gridSpec extent)