insertion
allBlockClasses

	^ (TBTRBlockModel users gather: [:each | each withAllSubclasses])
		reject: [:each | each isAbstract]