baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'IconsForMethods';
				package: 'MorphicMethods' with: [spec requires: #('IconsForMethods')];
				yourself].