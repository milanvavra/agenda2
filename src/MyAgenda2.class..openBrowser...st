!MyAgenda2 class methodsFor: 'instance creation' stamp: 'mva 3/15/2016 18:51'!
openBrowser
	"MyAgenda2 openBrowser"
	| br |
	br := self new.
	^ self
		openBrowserView: (br openEditString: nil)
		label: br defaultBrowserTitle.
! !
