accessing
name
	name ifNil: [self error: 'You need to set a name first'].
	^name