accessing
gameModel: aGameModel
	|cardEventListener|
	
	gameModel := aGameModel .
	self layout columnCount: gameModel gridSize .
	
	cardEventListener := MgdCardEventListener new gameModel: aGameModel .
	
	gameModel availableCards
		do: [ :aCard | 
			
			|cardElement|
			cardElement := MgdCardElement new card: aCard .
			cardElement addEventHandler: cardEventListener .
			
			self addChild: cardElement.
			]