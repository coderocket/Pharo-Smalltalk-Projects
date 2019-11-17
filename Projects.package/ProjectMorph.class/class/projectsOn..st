as yet unclassified
projectsOn: aBuilder
	<worldMenu>
	(aBuilder item: #Projects)
		order: 3.5;
		with: [
			(aBuilder item: #'New')
				help: 'Create a new unnamed project.';
				action: [ self open ].
			(aBuilder item: #'Previous')
				help: 'Close this project and go back to its parent.';
				action: [ Project current parent ifNotNil:[ :p | p enter ] ].
		]