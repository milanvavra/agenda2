!MyAgenda2 class methodsFor: 'instance creation' stamp: 'mva 3/18/2016 18:08'!
openBrowser
	"MyAgenda2 openBrowser"
	| br |
	br := self new.
	br askDatabaseCreateTables.
	br askUpdateSets.
	br askAndCategoriesSelectedCommand.
	^ self
		openBrowserView: (br openEditString: nil)
		label: br defaultBrowserTitle.
! !
