!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/18/2016 16:52'!
askDatabaseDropTables
	| query args cols rows |
	#(

'DROP TABLE IF EXISTS [Item];'
'DROP TABLE IF EXISTS [Category];'
'DROP TABLE IF EXISTS [Link];'

'DROP TABLE IF EXISTS [AndCategory];'
'DROP TABLE IF EXISTS [NotCategory];'
'DROP TABLE IF EXISTS [Category1];'
'DROP TABLE IF EXISTS [Item2];'
'DROP TABLE IF EXISTS [Category4];'
'DROP TABLE IF EXISTS [Category5];'

	)

	do: [ :tmpQuery |
		query := tmpQuery.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].
! !
