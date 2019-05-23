submorphs-add/remove
delete

	super delete.
	self nameMorph abandon.
	self breakDependents.