*tonel-gemstone-tests
tearDown
  directory
    ifNotNil: [ :dir | 
      | fileUtils |
      fileUtils := self fileUtils.
      (fileUtils directoryExists: dir)
        ifTrue: [ fileUtils deleteAll: dir ] ].
  super tearDown