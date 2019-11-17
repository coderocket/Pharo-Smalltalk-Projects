project navigation
previousProject
	| parent |
	
	parent := Project current parent.
	
	parent ifNotNil:[parent enter].