initialize-release
initialize

	super initialize.
	self differentGridFields: OrderedCollection new.
	self grid: OrderedCollection new.
	self rowSize: OrderedCollection new.
	self columnSize: OrderedCollection new.