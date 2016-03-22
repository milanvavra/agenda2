!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/18/2016 16:53'!
askDatabaseDeleteFromTables
	| query args cols rows |
	#(

'DELETE FROM [Item];'
'DELETE FROM [Category];'
'DELETE FROM [Link];'

'DELETE FROM [AndCategory];'
'DELETE FROM [NotCategory];'
'DELETE FROM [Category1];'
'DELETE FROM [Item2];'
'DELETE FROM [Category4];'
'DELETE FROM [Category5];'

	)

	do: [ :tmpQuery |
		query := tmpQuery.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].
! !
