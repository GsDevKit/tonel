private writing
writePackage: aPackageName
	"I'm assuming first category is actually the package"
	packageDir := aPackageName.
	self flag: #todo. "this is lame... removing and rewriting full package needs to be rethink :)"
	(self fileUtils directoryExists: self packageDir) ifTrue: [ 
		self fileUtils deleteAll: self packageDir ].  
	self fileUtils ensureDirectoryExists: self packageDir.
	self writer writePackage: packageDir