as yet unclassified
initialize
	
	super initialize.
	self color: Color random.
	self layoutPolicy: ProportionalLayout new.
	self createConnectorPearls.
	
	