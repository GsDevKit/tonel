accessing
packageWriter

   ^packageWriter ifNil: [ packageWriter := self defaultPackageWriter ]
