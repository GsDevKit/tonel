*tonel-gemstonecommon-core
asDictionary

  | dict |
  dict := Dictionary new.
  self do: [:assoc |
    dict add: assoc].
  ^ dict