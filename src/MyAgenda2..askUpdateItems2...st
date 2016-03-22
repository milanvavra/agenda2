!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/18/2016 16:59'!
askUpdateItems2
	| query args cols rows |
	#(

'DELETE FROM [Item2]
;'


'INSERT INTO [Item2] ([Item*Number])

SELECT
[Item.Number] FROM
[Item] WHERE

NOT EXISTS (SELECT 1 FROM
[AndCategory] WHERE
[Category*Number]
NOT IN
(SELECT [Category*Number] FROM
[Link] WHERE
[Item*Number]=[Item.Number]))

AND
NOT EXISTS (SELECT 1 FROM
[NotCategory] WHERE
[Category*Number]
IN
(SELECT [Category*Number] FROM
[Link] WHERE
[Item*Number]=[Item.Number]))
;'


	)

	do: [ :tmpQuery |
		query := tmpQuery replaceCrWithLf.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].
! !
