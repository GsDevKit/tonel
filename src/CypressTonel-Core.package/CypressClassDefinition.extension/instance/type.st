*cypresstonel-core
type
  | st |
  st := self subclassType.
  st = ''
    ifTrue: [ ^ #'normal' ].
  ^ st