as yet unclassified
initialize
	
	super initialize.
	self color: Color gray muchDarker.
	self color: Color random.
	self layoutPolicy: ProportionalLayout new.
	self createConnectorPearls.
	
	