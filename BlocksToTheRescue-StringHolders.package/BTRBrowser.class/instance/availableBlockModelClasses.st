block methods
availableBlockModelClasses

	^ TBTRBlockModel users gather: [:each | each withAllSubclasses]