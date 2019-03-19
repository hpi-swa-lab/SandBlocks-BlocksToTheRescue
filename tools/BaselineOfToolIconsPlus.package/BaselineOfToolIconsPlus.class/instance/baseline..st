baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec 
				package: 'ToolIconsPlus';
				package: 'ToolIconsPlus-Tests' with: [spec requires: #('ToolIconsPlus')];
				group: 'default' with: #('ToolIconsPlus');
				group: 'tests' with: #('ToolIconsPlus-Tests');
				yourself.
			spec
				postLoadDoIt: #postLoad].