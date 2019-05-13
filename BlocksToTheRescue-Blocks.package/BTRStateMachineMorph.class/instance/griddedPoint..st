accessing
griddedPoint: ungriddedPoint

	^ ((ungriddedPoint - self gridSpec origin) grid: self gridSpec extent)
		+ self gridSpec origin