interface-accessing
hash

	"Please override and call super in users"
	^ self selector hash bitXor: self methodClass hash