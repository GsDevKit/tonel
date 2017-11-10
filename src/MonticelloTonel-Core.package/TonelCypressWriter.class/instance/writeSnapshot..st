writing
writeSnapshot: aSnapshot
  self
    writeSnapshot: aSnapshot
    inPackageNamed: (aSnapshot dynamicInstVarAt: #'packageName')