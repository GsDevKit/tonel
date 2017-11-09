private writing
writePackage: aDefinition
	"I'm assuming first category is actually the package"
	packageDir := aDefinition categories first.
	self flag: #todo. "this is lame... removing and rewriting full package needs to be rethink :)"
	(self fileUtils directoryExists: self packageDir) ifTrue: [ 
		self fileUtils deleteAll: self packageDir ].  
	self fileUtils ensureDirectoryExists: self packageDir.
	self writer writePackage: packageDir