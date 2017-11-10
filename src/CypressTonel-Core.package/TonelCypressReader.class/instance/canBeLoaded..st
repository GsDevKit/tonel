private
canBeLoaded: aFileReference
  | fileName |
  fileName := self fileUtils localNameFrom: aFileReference.
  ^ fileName ~= 'package.st' and: [ fileName endsWith: '.st' ]