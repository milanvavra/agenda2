!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 21:52'!
askUpdateCategories4
	| query args cols rows tmpItemNumber |
	#(
'DELETE FROM [Category4]
;'
	)
	do: [ :tmpQuery |
		query := tmpQuery replaceCrWithLf.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].

	self askItems2ListHasSelectedIndex
	ifTrue: [

		tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

		#(
'INSERT INTO [Category4] ([Category*Number])

SELECT DISTINCT [Category*Number]
FROM
[Link] WHERE [Item*Number] = ?
;'
		)
		do: [ :tmpQuery |
			query := tmpQuery replaceCrWithLf.
			args := {tmpItemNumber}.
			cols := OrderedCollection new. rows := OrderedCollection new.
			self executeQuery: query args: args cols: cols rows: rows.
		]
	]

! !
