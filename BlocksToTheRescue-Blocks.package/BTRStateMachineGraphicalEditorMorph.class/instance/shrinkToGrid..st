grid
shrinkToGrid: aPoint

	^ (aPoint / self gridSpec extent) floor * self gridSpec extent