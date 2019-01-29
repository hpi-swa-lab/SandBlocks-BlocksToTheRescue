accessing
toolMorph

	^ self valueOfProperty: #toolMorph ifAbsentPut: [Morph new
			color: Color transparent;
			layoutPolicy: TableLayout new;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			name: 'container';
			yourself]