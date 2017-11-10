writing
writeSnapshot: aSnapshot inPackageNamed: packageName
  snapshot := aSnapshot.	"ensure package dirs exists. 
	 It has to be just one but well..."
  self writePackage: packageName.	"now export classes"
  (self definitions select: [ :each | each isClassDefinition ])
    do: [ :each | self writer writeClass: each ].	"... and method extensions"
  self writeMethodExtensions