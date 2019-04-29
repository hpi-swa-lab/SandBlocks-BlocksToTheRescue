*BlocksToTheRescue-Core
mirroredOnYAxis

	| bitblt |
	bitblt := (BitBlt toForm: (self species extent: self extent depth: depth))
		sourceForm: self;
		yourself.
	0 to: self width - 1 do: [:x | bitblt
		sourceRect: (x@0 extent: 1@self height);
		destRect: ((self width - 1 - x)@0 extent: 1@self height);
		combinationRule: Form over "store/overwrite";
		copyBits].
	^ bitblt destForm