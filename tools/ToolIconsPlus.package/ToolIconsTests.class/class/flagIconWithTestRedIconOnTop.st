constants
flagIconWithTestRedIconOnTop

	| newForm |
	newForm := self flagIcon copy.
	self testRedIcon copy displayOn: newForm at: 0@0 rule: Form blend.
	^ newForm