initializing - private
initialize

	self initializeDefaultRepositoryProperties.
	readerClass := CypressTonelPackageReader.
	writerClass := CypressTonelPackageWriter.
	properties 
		at: 'packageExtension'
		put: ['']
