initialize-release
initialize

	super initialize.
	self btrProperties: Dictionary new.
	self value: self defaultValue.