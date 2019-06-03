baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec package: 'Autocompletion' with: [
				spec repository: 'github://MrModder/Autocompletion:master/packages'].
			spec 
				package: 'BlocksToTheRescue-Core' with: [spec postLoadDoIt: #initializeScanner];
				package: 'BlocksToTheRescue-Utility';
				package: 'BlocksToTheRescue-Blocks' with: [spec requires: #('BlocksToTheRescue-Core' 'BlocksToTheRescue-Utility')];
				package: 'BlocksToTheRescue-BlockMessage' with: [spec requires: #('BlocksToTheRescue-Blocks')];
				package: 'BlocksToTheRescue-StringHolders' with: [spec requires: #('BlocksToTheRescue-Blocks')];
				package: 'BlocksToTheRescue-Examples' with: [spec requires: #('BlocksToTheRescue-Blocks')];
				package: 'BlocksToTheRescue-Autocompletion' with: [spec requires: #('BlocksToTheRescue-Blocks' 'Autocompletion')];
				package: 'BlocksToTheRescue-Tests' with: [spec requires: #('BlocksToTheRescue-Core' 'BlocksToTheRescue-StringHolders' 'BlocksToTheRescue-Blocks')].
				
			spec
				group: 'default' with: #('BlocksToTheRescue-Core' 'BlocksToTheRescue-Blocks' 'BlocksToTheRescue-StringHolders');
				group: 'autocompleted' with: #('default' 'BlocksToTheRescue-Autocompletion');
				group: 'tests' with: #('BlocksToTheRescue-Tests');
				yourself.
			spec
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad].