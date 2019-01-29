baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'IconsForMessages';
				package: 'MorphicMethods' with: [spec requires: #('IconsForMessages')];
				yourself].