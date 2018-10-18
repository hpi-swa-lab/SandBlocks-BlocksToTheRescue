accessing
tickEntities: deltaTime
	(self entitySet
		select: [:entity | entity ticking])
		do: [:entity | entity tick: deltaTime].