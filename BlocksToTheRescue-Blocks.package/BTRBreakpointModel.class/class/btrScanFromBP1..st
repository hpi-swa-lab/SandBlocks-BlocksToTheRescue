instance creation
btrScanFromBP1: aReadStream

	| byte enabled once |
	byte := Integer readFrom: aReadStream next asString.
	enabled := byte bitAt: 1.
	once := byte bitAt: 2.

	^ BTRBreakpointModel new
		enabled: enabled = 1;
		once: once = 1;
		yourself