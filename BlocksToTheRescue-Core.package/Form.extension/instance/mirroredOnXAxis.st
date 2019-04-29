*BlocksToTheRescue-Core
mirroredOnXAxis

	| bitblt |
	bitblt := (BitBlt toForm: (self species extent: self extent depth: depth))
		sourceForm: self;
		yourself.
	0 to: self height - 1 do: [:y | bitblt
		sourceRect: (0@y extent: self width@1);
		destRect: (0@(self height - 1 - y) extent: self width@1);
		combinationRule: Form over "store/overwrite";
		copyBits].
	^ bitblt destForm