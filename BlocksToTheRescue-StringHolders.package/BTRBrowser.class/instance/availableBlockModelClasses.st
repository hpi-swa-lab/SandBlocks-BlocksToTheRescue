block methods
availableBlockModelClasses

	^ TBTRBlockModel users gather: [:each | each withAllSubclasses reject: [:subclass | subclass = BTRMockModel]]