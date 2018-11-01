as yet unclassified
configure

	self collisionForm: (Form extent: self collisionRange depth: 32).
	self collisionForm getCanvas fillOval: (0 @ 0 corner: self collisionRange) color: Color brown.