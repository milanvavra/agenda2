!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/18/2016 17:47'!
askUpdateCategories1
	| query args cols rows |
	#(

'DELETE FROM [Category1]
;'

'INSERT INTO [Category1] ([Category*Number])

SELECT DISTINCT [Category*Number]
FROM [Item2]
JOIN [Link] USING([Item*Number])
WHERE [Category*Number]
NOT IN (SELECT [Category*Number] FROM [AndCategory])
;'

	)

	do: [ :tmpQuery |
		query := tmpQuery replaceCrWithLf.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].
! !
