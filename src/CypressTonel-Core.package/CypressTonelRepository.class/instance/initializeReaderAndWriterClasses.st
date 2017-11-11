initializing - private
initializeReaderAndWriterClasses

	self isCodeFormatTonel
		ifTrue: 
			[readerClass := CypressFlexiblePackageReader.
					writerClass := CypressPackageWriter]
		ifFalse: 
			[super initializeReaderAndWriterClasses]
