!MyAgenda2 methodsFor: 'initialize-release' stamp: 'mva 3/16/2016 01:24'!
openEditString: aString

	| builder |
	builder := ToolBuilder default.
	^self buildWindowWith: builder specs: {
		(LayoutFrame new leftFraction: 0 * 0.15; rightFraction: 1 * 0.15; topFraction: 0; bottomFraction: 0;
			topOffset: 0;
			bottomOffset: self buttonHeight;
			yourself) -> [self buildAndCategoryButtonWith: builder].
		(LayoutFrame new leftFraction: 0 * 0.15; rightFraction: 1 * 0.15; topFraction: 0; bottomFraction: 0.5;
			topOffset: self buttonHeight;
			bottomOffset: self buttonHeight negated;
			yourself) -> [self buildAndCategoryListWith: builder].

		(LayoutFrame new leftFraction: 0 * 0.15; rightFraction: 1 * 0.15; topFraction: 0.5; bottomFraction: 0.5;
			topOffset: self buttonHeight negated;
			bottomOffset: 0;
			yourself) -> [self buildNotCategoryButtonWith: builder].
		(LayoutFrame new leftFraction: 0 * 0.15; rightFraction: 1 * 0.15; topFraction: 0.5; bottomFraction: 1.0;
			topOffset: 0;
			bottomOffset: self buttonHeight negated;
			yourself) -> [self buildNotCategoryListWith: builder].


		(LayoutFrame new leftFraction: 1 * 0.15; rightFraction: 2 * 0.15; topFraction: 0; bottomFraction: 1.0;
			topOffset: 0;
			bottomOffset: self buttonHeight negated;
			yourself) -> [self buildAvailableCategoryListWith: builder].


		(LayoutFrame new leftFraction: 2 * 0.15; rightFraction: 2 * 0.15 + 0.4; topFraction: 0; bottomFraction: 1.0;
			topOffset: 0;
			bottomOffset: self buttonHeight negated;
			yourself) -> [self buildItemListWith: builder].

		(LayoutFrame new leftFraction: 0.7; rightFraction: 0.7 + 0.15; topFraction: 0; bottomFraction: 1.0;
			topOffset: 0;
			bottomOffset: self buttonHeight negated;
			yourself) -> [self buildMemberCategoryListWith: builder].

		(LayoutFrame new leftFraction: 0.85; rightFraction: 1.0; topFraction: 0; bottomFraction: 1.0;
			topOffset: 0;
			bottomOffset: self buttonHeight negated;
			yourself) -> [self buildNotMemberCategoryListWith: builder].


		(LayoutFrame new leftFraction: 0; rightFraction: 1; topFraction: 1.0; bottomFraction: 1.0;
			topOffset: self buttonHeight negated;
			bottomOffset: 0;
			yourself) -> [self buildLowerButtonsWith: builder].
	}
! !
