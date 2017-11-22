accessing
gameModel: aGameModel
	gameModel := aGameModel .
	
	gameModel availableCards
		do: [ :aCard | self addChild: (MgdCardElement new card: aCard) ].