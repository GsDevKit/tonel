writing
writePackage: packageName on: aStream

	aStream 
		<< 'Package ' 
		<< (self toSTON: { #name ->  packageName asSymbol } asDictionary) 
		<< self  newLine
