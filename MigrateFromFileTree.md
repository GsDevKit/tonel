Migrate from FileTree to Tonel
===

I prepared this small script to drive your migration:

```Smalltalk
locationDir := 'path/to/your/repo' asFileReference.
subDir := 'your-source-dir-or-empty'.
sourceDir := locationDir.
subDir 
	ifNotNil: [
		subDirWithDelim := subDir, '/'. 
		sourceDir := sourceDir / subDir ]
	ifNil: [
		subDirWithDelim := '' ].

repo := IceRepositoryCreator new 
	location: locationDir;
	subdirectory: subDir;
	createRepository.

"branch if you want to perform the migration on separated place (you 
can later do a PR)"
repo createBranch: 'migrate-sources-to-tonel'.

commit := repo branch lastCommit.
repo savedPackages do: [ :each | | filetreePackage |
	TonelWriter fileOut: (commit versionFor: each) on: sourceDir.
	filetreePackage := IceLibgitFiletreeWriter directoryNameFor: each.
	(sourceDir / filetreePackage) ensureDeleteAll.
	 repo addFilesToIndex: { 
		subDirWithDelim, (IceLibgitTonelWriter directoryNameFor: each).
		subDirWithDelim, (IceLibgitFiletreeWriter directoryNameFor: each). } ].

repo addProperties: (IceRepositoryProperties fromDictionary: { #format -> #tonel } asDictionary).

repo 
	commitIndexWithMessage: 'sources migrated' 
	andParents: { commit }.
	
repo push.
```

*Please note that is not possible to migrate history from FileTree to Tonel. This is because FileTree is file-per-method and Tonel is File-Per-Class, so no conversion can be made (at least that I can think of).*
