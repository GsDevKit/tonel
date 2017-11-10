accessing
packageName: aString
  packageName := aString.
  self
    packageDirectory:
      self repository directoryPath , self fileUtils pathNameDelimiter , packageName