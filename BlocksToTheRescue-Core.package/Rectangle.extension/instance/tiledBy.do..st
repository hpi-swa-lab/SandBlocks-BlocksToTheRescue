*BlocksToTheRescue-Core
tiledBy: tileSize do: aBlockClosure
	"Iterates both height and width as intervals using the tileSize as steps.
	The block receives the incrementing positional index and a rectangle of the current tile (may be cut to bounds)."

	| ix iy |
	ix := 0.
	iy := 0.
	self top to: self bottom by: tileSize y
		do: [ :y | iy := iy + 1. ix := 0.
			self left to: self right by: tileSize x
				do: [ :x | ix := ix + 1.
					aBlockClosure
						value: ix@iy
						value: (self intersect: (x@y extent: tileSize))]].