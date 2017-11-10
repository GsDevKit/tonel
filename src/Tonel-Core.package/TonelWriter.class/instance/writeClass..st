writing
writeClass: aClassDefinition
	[ 
		self packageWriter 
			writePackageFileNamed: (self fileNameFor: aClassDefinition) 
			do:  [ :aStream | 
				self writeClassDefinition: aClassDefinition on: aStream.
				self writeClassSideMethodDefinitions: aClassDefinition on: aStream.
				self writeInstanceSideMethodDefinitions: aClassDefinition on: aStream ] ]
	on: TonelShouldIgnore
	do: [ :e | self logCr: 'ignoring: ', aClassDefinition asString ]