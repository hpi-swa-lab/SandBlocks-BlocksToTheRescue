baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'ToolIconsPlus';
				package: 'MorphicMethods' with: [spec requires: #('ToolIconsPlus')];
				yourself].