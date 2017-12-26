writing
writePackage: packageName
	self packageWriter 
		writePackageFileNamed: 'package.st'
		do:  [ :aStream | self writePackage: packageName on: aStream ]
