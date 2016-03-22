!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/18/2016 12:43'!
askLoad
	| tmpFileName tmpCharCount tmpRowCount tmpColCount tmpLine tmpItemText tmpItemUrlText tmpChar tmpCategoryText tmpItemNumber tmpCategoryNumber query args cols rows tmpCategoryNumberC tmpTimeToRun |
	tmpFileName := self askFileNameText.
	tmpCharCount := 0.
	tmpRowCount := 0.
	tmpColCount := 0.
	tmpLine := ''.
	tmpCategoryNumber := 0.
	tmpItemNumber := 0.

[

tmpTimeToRun := [
	FileStream readOnlyFileNamed: tmpFileName do: [ :tmpStream |

		{ '[Item]'. '[Category]'. '[Link]'} do: [ :tmpTableName |
			query := 'DELETE FROM ', tmpTableName.
			args := {}.
			cols := OrderedCollection new. rows := OrderedCollection new.
			self executeQuery: query args: args cols: cols rows: rows.
		].

		[ tmpStream atEnd ] whileFalse: [
			tmpChar := tmpStream next.
			tmpChar isNumber ifTrue: [ tmpChar := Character value: tmpChar ].
			tmpChar  = Character lf ifTrue: [
				tmpLine ifNotEmpty: [

					(tmpLine at: 1) = $I ifTrue: [
						tmpItemNumber := tmpItemNumber + 1.
						tmpItemText := tmpLine copyFrom: 3 to: tmpLine size.
						query := 'INSERT INTO [Item]([Item.Number], [Item.Text]) VALUES(?, ?)'.
						args := {tmpItemNumber. tmpItemText}.
						cols := OrderedCollection new. rows := OrderedCollection new.
						self executeQuery: query args: args cols: cols rows: rows.
					].
					(tmpLine at: 1) = $U ifTrue: [
						tmpItemUrlText := tmpLine copyFrom: 3 to: tmpLine size.
						query := 'UPDATE [Item] SET [Item.Url] = ? WHERE [Item.Number] = ?'.
						args := {tmpItemUrlText. tmpItemNumber}.
						cols := OrderedCollection new. rows := OrderedCollection new.
						self executeQuery: query args: args cols: cols rows: rows.
					].
					(tmpLine at: 1) = $C ifTrue: [
						tmpCategoryText := tmpLine copyFrom: 3 to: tmpLine size.
						query := 'SELECT [Category.Number] FROM [Category] WHERE [Category.Text] = ?'.
						args := {tmpCategoryText}.
						cols := OrderedCollection new. rows := OrderedCollection new.
						self executeQuery: query args: args cols: cols rows: rows.
						rows isEmpty ifFalse: [
							tmpCategoryNumberC := (rows at: 1) at: 1.
						] ifTrue: [
							tmpCategoryNumber := tmpCategoryNumber + 1.
							tmpCategoryNumberC := tmpCategoryNumber.
							query := 'INSERT INTO [Category]([Category.Number], [Category.Text]) VALUES(?, ?)'.
							args := {tmpCategoryNumberC. tmpCategoryText}.
							cols := OrderedCollection new. rows := OrderedCollection new.
							self executeQuery: query args: args cols: cols rows: rows.
						].
						query := 'INSERT INTO [Link]([Item*Number], [Category*Number]) VALUES(?, ?)'.
						args := {tmpItemNumber. tmpCategoryNumberC}.
						cols := OrderedCollection new. rows := OrderedCollection new.
						self executeQuery: query args: args cols: cols rows: rows.
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

] timeToRun.

	Transcript show: 'time: '; show: tmpTimeToRun ; cr.

	Transcript show: 'lines: '; show: tmpRowCount ; cr.
	Transcript show: 'chars: '; show: tmpCharCount ; cr.



] fork

"
	self askUpdateSetsToDefault.

	self askUpdateWindow
"
! !
