copying
postCopy
	
	"We have to make sure to copy our btrProperties otherwise we don't actually copy our state because it's completely saved in this dictionary"
	self btrProperties: self btrProperties copy.