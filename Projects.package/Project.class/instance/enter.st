as yet unclassified
enter

	CurrentProject ifNotNil:[CurrentProject leave].
	CurrentProject := self.
	
	[
		UIManager default deactivate.
		world install.
		UIManager default activate.
		UIManager default restoreDisplay.
		
	] forkAt: Processor userInterruptPriority

