*tonel-gemstone-tests
directory
  directory
    ifNil: [ 
      | fileUtils |
      fileUtils := self fileUtils.
      directory := fileUtils
        directoryFromPath: 'mctest'
        relativeTo: fileUtils default.
      fileUtils ensureDirectoryExists: directory ].
  ^ directory