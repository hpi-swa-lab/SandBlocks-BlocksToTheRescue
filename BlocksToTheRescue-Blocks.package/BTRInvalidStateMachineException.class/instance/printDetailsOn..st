as yet unclassified
printDetailsOn: aStream
	"Allow applications to optionally print extra details without overriding a base package."

	self state ifNotNil: [
		aStream nextPutAll: 'State: '.
		self state printOn: aStream].
	self transition ifNotNil: [
		aStream nextPutAll: 'Transition: '.
		self transition printOn: aStream].