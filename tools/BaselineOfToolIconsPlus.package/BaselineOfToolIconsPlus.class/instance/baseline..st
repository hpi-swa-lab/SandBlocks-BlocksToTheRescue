baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec 
				package: 'ToolIconsPlus';
				group: 'default' with: #('ToolIconsPlus');
				group: 'tests' with: #('ToolIconsPlus');
				yourself.
			spec
				postLoadDoIt: #postLoad].