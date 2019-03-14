baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec 
				package: 'BlocksToTheRescue';
				"package: 'BlocksToTheRescue-Test' with: [spec requires: #('BlocksToTheRescue')];"
				group: 'default' with: #('BlocksToTheRescue');
				yourself.
			spec
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad].