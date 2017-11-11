accessing
packageName: aString
  packageName := aString.
  self
    packageDirectory:
      (self fileUtils directoryFromPath: packageName relativeTo: self directoryPath)