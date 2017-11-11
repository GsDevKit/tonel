initializing - private
initializeReaderAndWriterClasses
  self isCodeFormatTonel
    ifTrue: [ 
      readerClass := TonelCypressReader.
      writerClass := TonelCypressWriter ]
    ifFalse: [ super initializeReaderAndWriterClasses ]