!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 21:02'!
askUpdateCategories5
	| query args cols rows |
	#(
'DELETE FROM [Category5]
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

		#(
'INSERT INTO [Category5] ([Category*Number])

SELECT DISTINCT [Category*Number]
FROM
[Link]
WHERE [Category*Number] NOT IN
(SELECT [Category*Number] FROM [Category4])
;'
		)
		do: [ :tmpQuery |
			query := tmpQuery replaceCrWithLf.
			args := {}.
			cols := OrderedCollection new. rows := OrderedCollection new.
			self executeQuery: query args: args cols: cols rows: rows.
		]
	]

! !
