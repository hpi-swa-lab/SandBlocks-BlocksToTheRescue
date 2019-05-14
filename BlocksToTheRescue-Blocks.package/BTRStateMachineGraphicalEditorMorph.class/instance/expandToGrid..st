grid
expandToGrid: aPoint

	^ (aPoint / self gridSpec extent) ceiling * self gridSpec extent