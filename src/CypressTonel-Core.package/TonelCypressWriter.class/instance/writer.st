accessing
writer
  ^ writer
    ifNil: [ 
      writer := TonelWriter new
        packageWriter: self;
        yourself ]