private writing
writePackageFileNamed: packageFileName do: writerBlock

	self fileUtils 
		writeStreamFor: packageFileName
		in: self packageDir 
		do: [ :aStream | writerBlock value: aStream ]