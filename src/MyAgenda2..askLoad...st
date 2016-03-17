!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/15/2016 21:14'!
askLoad
	| tmpFileName tmpCharCount tmpRowCount tmpColCount tmpItemCategories tmpCategoryItems tmpLine tmpItem tmpChar tmpCategory tmpCategories |
	tmpFileName := self askFileName askFileNameText.
	tmpCharCount := 0.
	tmpRowCount := 0.
	tmpColCount := 0.
	tmpLine := ''.

	tmpCategories := self askInstancesDictionary.
	self askInstancesDictionary: nil.


	tmpItemCategories := Dictionary new.
	tmpCategoryItems := Dictionary new.

	FileStream readOnlyFileNamed: tmpFileName do: [ :tmpStream |

		[ tmpStream atEnd ] whileFalse: [
			tmpChar := tmpStream next.
			tmpChar isNumber ifTrue: [ tmpChar := Character value: tmpChar ].
			tmpChar  = Character lf ifTrue: [
				tmpLine ifNotEmpty: [

					(tmpLine at: 1) = $I ifTrue: [
						tmpItem := MyItem new.
						tmpItem askItemText: (tmpLine copyFrom: 3 to: tmpLine size).
						tmpCategory := self askCategoryWithText: 'All'.
						(tmpItemCategories at: tmpItem ifAbsentPut: [Set new]) add: tmpCategory.
						(tmpCategoryItems at: tmpCategory ifAbsentPut: [Set new]) add: tmpItem.
					].
					(tmpLine at: 1) = $U ifTrue: [
						tmpItem askItemUrl: (tmpLine copyFrom: 3 to: tmpLine size).
					].
					(tmpLine at: 1) = $C ifTrue: [
						tmpCategory := self askCategoryWithText: (tmpLine copyFrom: 3 to: tmpLine size) .
						(tmpItemCategories at: tmpItem ifAbsentPut: [Set new]) add: tmpCategory.
						(tmpCategoryItems at: tmpCategory ifAbsentPut: [Set new]) add: tmpItem.
					].
				].

				tmpRowCount := tmpRowCount + 1.
				tmpCharCount := tmpCharCount + 1.
				tmpColCount := 0.
				tmpLine := ''.
			] ifFalse: [
				tmpLine := tmpLine, tmpChar asString.

				tmpCharCount := tmpCharCount + 1.
				tmpColCount := tmpColCount + 1.
			]
		]
	].

	Transcript show: 'lines: '; show: tmpRowCount ; cr.
	Transcript show: 'chars: '; show: tmpCharCount ; cr.

	self askItemCategories: tmpItemCategories.

	self askCategoryItems:	 tmpCategoryItems.

	self askUpdateSetsToDefault.

	self askUpdateWindow
! !
