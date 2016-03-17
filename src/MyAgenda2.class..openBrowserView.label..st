!MyAgenda2 class methodsFor: 'instance creation' stamp: 'mva 3/15/2016 14:57'!
openBrowserView: aBrowserView label: aString

	(aBrowserView isKindOf: ToolBuilderSpec) ifTrue:[
		(self canUseMultiWindowBrowsers
		 and: [self useMultiWindowBrowsers]) ifTrue:
			[aBrowserView multiWindowStyle: #labelButton].
		ToolBuilder open: aBrowserView label: aString.
	] ifFalse:[
		aBrowserView isMorph
			ifTrue:  [(aBrowserView setLabel: aString) openInWorld]
			ifFalse: [aBrowserView label: aString.
					aBrowserView minimumSize: 300 @ 200.
					aBrowserView subViews do: [:each | each controller].
					aBrowserView controller open].
	].
	^ aBrowserView model
! !
