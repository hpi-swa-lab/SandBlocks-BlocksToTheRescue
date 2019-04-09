interface-accessing
btrProperties
	
	"This should be an accessor to a instance variabls any trait user must define"
	^ properties ifNil: [properties := Dictionary new]